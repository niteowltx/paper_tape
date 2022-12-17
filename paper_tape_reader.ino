//
// Paper Tape Reader
//
// Read data from ancient paper tapes.  Tape is 1" wide with 8 data
// holes and 1 sprocket hole which is used to strobe the data since it
// is slightly smaller than the data holes.
//
// There are 9 inputs from the photodiode array: D0-D7 and Strobe
// The tape layout is:  D0 D1 D2 Strobe D3 D4 D5 D6 D7
//
// The rising strobe pin is attaced to an interrupt handler which
// picks up the current byte and puts it in a FIFO.  The main
// processing loop simply waits for characters to arrive in the FIFO
// and sends them out the serial port.
//
// Normally pins are read via digitalRead() but to do it faster
// we read the ports directly.  There is no single port with all 8
// pins available, so we use PINB and PIND which can be combined
// to make the whole 8-bit value.
//
//  There are only 5 electronic components:
//	Arduino Metro Mini (Adafruit)
//	IR Led Array (OSRAM SFH-4949)
//	Photodiode Array (OSRAM BPX-89)
//	Led pullup array (2K, 10-pin SIP)
//	Diode pulldown array (1K, 10-pin SIP)
//
//  Similar designs use Schmitt trigger buffers (74HC14 or similar) to
//  clean up the input signal, but the Arduino (ATmeta328) already has
//  Schmitt triggers built-in so these are unnecessary.
//

int Strobe = 2;  // PD2, INT0
int D0 = 8;      // PB0
int D1 = 9;      // PB1
int D2 = 10;     // PB2
int D3 = 11;     // PB3
int D4 = 12;     // PB4
int D5 = 5;      // PD5
int D6 = 6;      // PD6
int D7 = 7;      // PD7
int Mpin = 3;    // Select output mode: 1=ASCII or 0=HEX+ASCII
int Error = LED_BUILTIN;  // Red LED

int Mode = 0; // selected output mode

// Current data byte
static inline unsigned char pt_byte() { return (PINB & 0x1F) | (PIND & 0xE0); }

// 2-byte printable version of ASCII character table
const char *Ascii[] = {
	"\\0", "^A", "^B", "^C", "^D", "^E", "^F", "^G",
	"^H", "^I", "LF", "^K", "^L", "CR", "^N", "^O",
	"^P", "^Q", "^R", "^S", "^T", "^U", "^V", "^W",
	"^X", "^Y", "^Z", "^[", "^\\", "^]", "^^", "^_",
	"SP", "! ", "\" ", "# ", "$ ", "% ", "& ", "' ",
	"( ", ") ", "* ", "+ ", ", ", "- ", ". ", "/ ",
	"0 ", "1 ", "2 ", "3 ", "4 ", "5 ", "6 ", "7 ",
	"8 ", "9 ", ": ", "; ", "< ", "= ", "> ", "? ",
	"@ ", "A ", "B ", "C ", "D ", "E ", "F ", "G ",
	"H ", "I ", "J ", "K ", "L ", "M ", "N ", "O ",
	"P ", "Q ", "R ", "S ", "T ", "U ", "V ", "W ",
	"X ", "Y ", "Z ", "[ ", "\\ ", "] ", "^ ", "_ ",
	"` ", "a ", "b ", "c ", "d ", "e ", "f ", "g ",
	"h ", "i ", "j ", "k ", "l ", "m ", "n ", "o ",
	"p ", "q ", "r ", "s ", "t ", "u ", "v ", "w ",
	"x ", "y ", "z ", "{ ", "| ", "} ", "~ ", "DL"
};

char Hexstr[] = "0123456789ABCDEF";

// FIFO
volatile int	In = 0;
volatile int	Out = 0;
#define FIFO_SIZE	512
volatile unsigned char Fifo[FIFO_SIZE];


// put one byte into fifo, discard if full
static inline void
fifo_put(unsigned char c)
{
	int next_in = In+1;

	if( next_in >= FIFO_SIZE )
		next_in = 0;
	if( next_in != Out ) {	// if not full, add it
		Fifo[In] = c;
		In = next_in;
		}
	else {
		digitalWrite(Error,HIGH); // indicate some bytes were dropped
	}
}

// get one byte from fifo, return 0 if empty
static inline unsigned char
fifo_get()
{
	unsigned char c;
	int next_out = Out+1;

	if(next_out >= FIFO_SIZE )
		next_out = 0;
	if( In != Out ){
		c = Fifo[Out];
		Out = next_out;
		}
	else
		c = 0;

	return c;
}

// test fifo empty
static inline int
fifo_empty()
{
	return In == Out;
}

// get 8 bits from the combined ports B and D, put byte in fifo
void
capture()
{
	fifo_put( pt_byte() );
}

// Print a byte on the serial output.  Show in HEX and ASCII
static inline void
display_hex_ascii(unsigned char b)
{
	static char outstr[6] = "xx aa";
	const char *a = Ascii[b&0x7F];

	outstr[0] = Hexstr[b>>4];
	outstr[1] = Hexstr[b&0xF];
	outstr[3] = a[0];
	outstr[4] = a[1];
	Serial.println(outstr);
}

// Print byte as ASCII.  Strip parity, discard NULL or DEL
// Show non-printable characters in hex as: {XX} 
static inline void
display_ascii(unsigned char b)
{
	static char outstr[5] = "{XX}";

	b &= 0x7F;
	if( b==0x00 || b==0x7F )
		return;
	if( isPrintable(b) || isSpace(b) )
		Serial.write(b);
	else{
		outstr[1] = Hexstr[b>>4];
		outstr[2] = Hexstr[b&0xF];
		Serial.print(outstr);
	}
}

static inline void
display(unsigned char b)
{
	if(Mode)
		display_ascii(b);
	else
		display_hex_ascii(b);
}

void
setup()
{
	pinMode(Strobe, INPUT);
	pinMode(D0,     INPUT);
	pinMode(D1,     INPUT);
	pinMode(D2,     INPUT);
	pinMode(D3,     INPUT);
	pinMode(D4,     INPUT);
	pinMode(D5,     INPUT);
	pinMode(D6,     INPUT);
	pinMode(D7,     INPUT);
	pinMode(Mpin,   INPUT_PULLUP);
	pinMode(Error,  OUTPUT);

	digitalWrite(Error, LOW);
	Mode = digitalRead(Mpin);

	Serial.begin(115200);	// fast enough to keep up at 96 ft/sec RAW, 16 ft/sec hex+ascii

	// capture bytes on RISING edge.  This gives the data holes maximum time
	// to stabilize before sampling them.
	attachInterrupt(digitalPinToInterrupt(Strobe), capture, FALLING);
}

void
loop()
{
	while( !fifo_empty() )
		display(fifo_get());
}
