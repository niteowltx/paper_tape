
A Paper Tape Reader for ancient ASR33 class paper tapes.

	Paper is 1" wide with 9 holes on 0.1" centers.  Rows are also 0.1" apart.
	Data holes are 0.072" diameter, sprocket hole is 0.046" diameter
	Sprocket is small so it works as a strobe for the data

	Paper Tape layout:
		D0 D1 D2 St D3 D4 D5 D6 D7

Hardware:
	3D printed paper tape guide (top and bottom)

	top board: IR LED array (OSRAM SFH-4949), pullup resistor network (2K ohms)

	bottom board: Photo diode array (OSRAM BPX89), pulldown resistor network (1K ohms)

	process board: Adafruit Metro Mini, USB power and serial in/out

	Top and Bottom boards are identical, just flipped and populated differently.  Top
		board (IR LED) only connects +5 and Gnd.

	Signal cleanup between the Photodiode array and the Arduino are not necessary
		since the ATmega328 has Schmitt triggers built in.

	Photodiode Array to Arduino wiring:

		D0 -> PB0 -> Digital Pin 8
		D1 -> PB1 -> Digital Pin 9
		D2 -> PB2 -> Digital Pin 10
		D3 -> PB3 -> Digital Pin 11
		D4 -> PB4 -> Digital Pin 12
		D5 -> PD5 -> Digital Pin 5
		D6 -> PD6 -> Digital Pin 6
		D7 -> PD7 -> Digital Pin 7
		St -> PD2 -> Digital Pin 2 (INT0)

		To read all 8 bits in 2 reads from I/O Ports:
			byte = (PINB & 0x1F) | (PIND & 0xE0);

Software:
	Strobe generates interrupt on Arduino which reads byte and puts it in a FIFO.
		FIFO is 1000 bytes deep to allow for irregularites in serial output and
		the speed at which the loop() function is called.

	Main loop pulls bytes from FIFO and sends them via USB serial to host.

	Bytes are printed in HEX and a 2-character ASCII representaion of the lower 7-bits

	Serial output is set to 115200 which is fast enough for 96 ft/sec when the raw bytes
		from the tape are just sent over the serial port.  Printing bytes with a little formatting
		in HEX and printable ASCII reduces this to 16 ft/sec.
