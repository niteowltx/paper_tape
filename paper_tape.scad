$fn					= 32;
//
// Paper Tape Reader
//
//	Paper guide and holder for IR LED & Photodiode arrays
//
// all dimensions in mm
//

// Paper tape dimensions (EIA Std RS-227 / RS-244)
perf_pitch		= 2.540;				// distance between punches on paper (horizontal and vertical)
perf_count		= 9;					// perforations per row
paper_width		= (perf_count+1)*perf_pitch; // (1 inch)
perf_small_r		= (1.1684/2);		// feed hole radius (0.046 inch diameter)
perf_large_r		= (1.8288/2);		// data hole radius (0.072 inch diameter)
paper_thick		= 0.10;				// paper thickness
strip_len	= 29;							// sample paper strip length, in frames

// Sensor dimensions
sensor_width		= perf_pitch+1;		// slightly wider than perf_pitch to accomodate sensor leads
sensor_height	= 3.632;				// height of ir led and photodiode arrays

// Paper tape guide
plate_w			= 38.1;			// 1.5 in
plate_h			= 53.34;			// 2.1 in
guide_offset		= sensor_height/3;	// raise top and lower bottom paper guide slot by this much

// PCB parameters
pcb_w				= plate_w;						// 1.5 in
pcb_h				= plate_h + (perf_pitch*4);	// 2.5 in
pcb_thick			= 1.5;

// Mounting screw hole diameter and radius
mhole_d			= 3;					// M3 nylon screws and nuts
mhole_r			= mhole_d/2;

module paper(n)
{
	color("Green")
	for(i=[0:n-1])
	translate([0,perf_pitch*i,0])
	difference(){
		cube([paper_width,perf_pitch,paper_thick]);
		for(p=[1:perf_count]){
			if(p==4)
				translate([(perf_pitch)*p,perf_pitch/2,0])
					cylinder(r=perf_small_r,h=paper_thick*3,center=true);
			else
				translate([(perf_pitch)*p,perf_pitch/2,0])
					cylinder(r=perf_large_r,h=paper_thick*3,center=true);
		}
	}
}

module mounting_holes(thick)
{
		translate([ plate_w/2-mhole_d, plate_h/2-mhole_d,0])cylinder(r=mhole_r,h=thick*2,center=true);
		translate([-plate_w/2+mhole_d, plate_h/2-mhole_d,0])cylinder(r=mhole_r,h=thick*2,center=true);
		translate([ plate_w/2-mhole_d,-plate_h/2+mhole_d,0])cylinder(r=mhole_r,h=thick*2,center=true);
		translate([-plate_w/2+mhole_d,-plate_h/2+mhole_d,0])cylinder(r=mhole_r,h=thick*2,center=true);
}

module bracket(thick)
{
	difference() { 
		cube(size=[plate_w,plate_h,thick],center=true);		// base
		mounting_holes(thick);

	}
}

module sensor_slot()
{
	cube(size=[sensor_width,perf_pitch*perf_count,sensor_height+20],center=true);	// sensor slot
}

module paper_guide_bottom()
{
	color("SteelBlue")
	difference() {
		rotate(180,[0,1,0])bracket(sensor_height+guide_offset);
		sensor_slot();
		translate([0,0,sensor_height-guide_offset])cube(size=[plate_h+1,paper_width,sensor_height],center=true);	// paper guide
	}
}

module paper_guide_top()
{
	color("LightSteelBlue")
	difference() {
		union() {
			bracket(sensor_height-guide_offset);
			translate([0,0,-guide_offset])cube(size=[plate_w,paper_width,sensor_height],center=true); // paper guide
		}
		sensor_slot();
	}
}

module holes(n)
{
	for(i=[0:n-1])
	translate([0,perf_pitch*i,0])
		cylinder(r=perf_pitch/4,h=5,center=true);
	

}

module resistor_pack()
{
	rotate(90,[0,0,1])
	translate([plate_h/2+perf_pitch,(-perf_pitch*10)/2,0])
	holes(10);
}

module connector()
{
	rotate(90,[0,0,1])
	translate([plate_h/2+(perf_pitch*2),(-perf_pitch*10)/2,0])
	holes(11);
}

module sensor_board()
{
	color("Yellow")
	difference() {
		translate([0,perf_pitch*2,0])cube(size=[pcb_w,pcb_h,pcb_thick],center=true);	// circuit board
		translate([perf_pitch/2,(-perf_pitch*8)/2,0])holes(9);	// sensor holes
		translate([-perf_pitch/2,(-perf_pitch*8)/2,0])holes(9);	// sensor holes
		mounting_holes(2);		// mounting holes
		resistor_pack();
		connector();
	}
}

module dip(pins,spacing)
{
	translate([-spacing/2,0,0])holes(pins);
	translate([spacing/2,0,0])holes(pins);
}

module main_board()
{
	color("Orange")
	difference() {
		translate([0,perf_pitch*2,0])cube(size=[pcb_w,pcb_h,pcb_thick],center=true);	// circuit board
		mounting_holes(2);		// mounting holes
		connector();
		translate([0,-perf_pitch*7,0])dip(14,perf_pitch*6);	// Adafruit Metro Mini
	}
}

module assembly()
{
	translate([0,0,0])paper_guide_bottom();
	translate([0,0,sensor_height*2])paper_guide_top();
	translate([0,0,-sensor_height*1])sensor_board();	// bottom board: photodiodes
	rotate(180,[0,1,0])translate([0,0,-sensor_height*2.5])sensor_board();	// top board: IR led's
	translate([0,0,-sensor_height*2])main_board();		// main board: arduino
	rotate(90,[0,0,-1])translate([-paper_width/2,-(perf_pitch*strip_len/2),1])paper(strip_len);
}

module all()
{
	assembly();
}

module pieces()
{
	rotate(180,[0,1,0])translate([plate_w*.66,0,0])paper_guide_top();
	translate([plate_w*.66,0,0])paper_guide_bottom();
	translate([plate_w*0.66,pcb_h,0])sensor_board();
	translate([-plate_w*0.66,pcb_h,0])sensor_board();
	translate([plate_w*2,0,0])main_board();
}

all();
//pieces();
