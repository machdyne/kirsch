/*
 * Kirsch Case
 * Copyright (c) 2024 Lone Dynamics Corporation. All rights reserved.
 *
 * required hardware:
 *  - 4 x M3 x 30mm countersunk bolts
 *  - 4 x M3 nuts
 *
 */

$fn = 100;

board_width = 52;
board_thickness = 1.5;
board_length = 84;
board_height = 1.6;
board_spacing = 2;

wall = 2;

top_height = 25;
bottom_height = 6;

translate([wall,wall,0]) mdx_board();

color([1,0,0]) translate([0,0,15])
	mdx_case_top();

color([1,0,0]) translate([0,0,-15])
	mdx_case_bottom();

translate([0,0,15])
	mdx_case_slide();

module mdx_board() {
	
	difference() {
		color([0,0.5,0])
			roundedcube(board_width,board_length,board_thickness,5);
		translate([4, 4, -1]) cylinder(d=3.2, h=10);
		translate([4, 84-4, -1]) cylinder(d=3.2, h=10);
		translate([52-4, 4, -1]) cylinder(d=3.2, h=10);
		translate([52-4, 84-4, -1]) cylinder(d=3.2, h=10);
	}	
	
}

module mdx_case_slide() {

	color([1,1,1]) translate([wall, wall, 0]) {
		difference() {
			union() {
				translate([-2,58.95-((25-0.2)/2),18]) cube([56,25-0.2,7]);
				translate([0,58.95-((27.5-0.4)/2),18]) cube([54,27.5-0.4,2.5-0.4]);
			}
			translate([-1,58.95-((22.5-0.2)/2),13.5]) cube([54,22.5-0.2,10]);
			translate([-2.5,58.95-(40/2),15+0.1]) cube([2.5,40,7]);
		}
	}
	
	
}

module mdx_case_top() {

	translate([0,25,19])
		rotate([90,0,270])
			translate([0,-10,0])
				linear_extrude(1)
					text("K I R S C H", size=5, halign="center",
						font="Liberation Sans:style=Bold");


	// supports
	translate([wall, wall, 0]) {
	}
	
	difference() {
				
		color([0.5,0.5,0.5])
			roundedcube(board_width+(wall*2),board_length+(wall*2),top_height,4);

		// cutouts
			
		translate([2,9.5,-2])
			roundedcube(board_width-1.25,board_length-16,20,5);

		translate([9.5,2,-2])
			roundedcube(board_width-16,board_length,20,5);			
	
		translate([wall, wall, 0]) {

			// vents
			translate([(52/2)-5,-5,10]) rotate([0,0,90]) cube([15,1,20]);
			translate([(52/2),-5,10]) rotate([0,0,90]) cube([15,1,20]);
			translate([(52/2)+5,-5,10]) rotate([0,0,90]) cube([15,1,20]);
			
			// USBC
			translate([30,65-(9.5/2),0]) cube([30,9.5,3.5]);

			// DDMI
			translate([30,35-(15.5/2),-1]) cube([30,15.5,6+1]);

			// AUDIO
			translate([30,15.5-(10/2),-1]) cube([30,10,10.5+1]);			
			
			// DUAL USBA
			translate([26-(15/2),80,0]) cube([15,10,15.8+1]);
	
			// SD
			translate([-10,17.6-(15/2),-2]) cube([15,15,2+2]);
			
			// PMODA
			translate([-10,58.95-(16/2),0]) cube([25,16,5.1]);

			// MMOD/JTAG ACCESS
			translate([0,58.95-(25/2),20]) cube([65,25,10+1]);
			translate([-4,58.95-(25/2),22]) cube([65,25,10+1]);
			translate([0,58.95-(27.5/2),18]) cube([65,27.5,2.5]);
			
			// bolt holes
			translate([4, 4, -15]) cylinder(d=3.5, h=40);
			translate([4, 84-4, -15]) cylinder(d=3.5, h=40);
			translate([52-4, 4, -14]) cylinder(d=3.5, h=40);
			translate([52-4, 84-4, -14]) cylinder(d=3.5, h=40);

			// flush mount bolt holes
			translate([4, 4, top_height-1.5]) cylinder(d=5.25, h=4);
			translate([4, 84-4, top_height-1.5]) cylinder(d=5.25, h=4);
			translate([52-4, 4, top_height-1.5]) cylinder(d=5.25, h=4);
			translate([52-4, 84-4, top_height-1.5]) cylinder(d=5.25, h=4);


		}
		
	}	
}

module mdx_case_bottom() {
	
	difference() {
		color([0.5,0.5,0.5])
			roundedcube(board_width+(wall*2),board_length+(wall*2),bottom_height,4);
		
		// cutouts
		translate([3,10,1.5])
			roundedcube(board_width-3,board_length-17,10,5);
				
		translate([10.5,3,1.5])
			roundedcube(board_width-17.5,board_length-2,10,5);

		translate([wall, wall, 0]) {
			
		// board cutout
		translate([0,0,bottom_height-board_height])
			roundedcube(board_width+0.2,board_length+0.2,board_height+1,2.5);

		translate([wall, wall, 0]) {

			// USBC
			translate([-2,65-(10/2),1.5]) cube([30,10,3.5]);

		}

		// bolt holes
		translate([4, 4, -11]) cylinder(d=3.2, h=25);
		translate([4, 84-4, -11]) cylinder(d=3.2, h=25);
		translate([52-4, 4, -11]) cylinder(d=3.2, h=25);
		translate([52-4, 84-4, -11]) cylinder(d=3.2, h=25);

		// nut holes
		translate([4, 4, -1]) cylinder(d=7, h=4, $fn=6);
		translate([4, 84-4, -1]) cylinder(d=7, h=4, $fn=6);
		translate([52-4, 4, -1]) cylinder(d=7, h=4, $fn=6);
		translate([52-4, 84-4, -1]) cylinder(d=7, h=4, $fn=6);

		}
		
	}	
}

// https://gist.github.com/tinkerology/ae257c5340a33ee2f149ff3ae97d9826
module roundedcube(xx, yy, height, radius)
{
    translate([0,0,height/2])
    hull()
    {
        translate([radius,radius,0])
        cylinder(height,radius,radius,true);

        translate([xx-radius,radius,0])
        cylinder(height,radius,radius,true);

        translate([xx-radius,yy-radius,0])
        cylinder(height,radius,radius,true);

        translate([radius,yy-radius,0])
        cylinder(height,radius,radius,true);
    }
}
