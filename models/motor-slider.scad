// the nut that slides along the stepper motor's screw
module motor_slider() {
	height = 24;
	
	difference() {
		// slider body
		minkowski() {
			cube([height, 8, 8], center = true);
			rotate([0, 90, 0]) {
				cylinder(r = 2, h = 1, $fn = 100);
			}
		}
		
		// motor frame holes
		translate([0.5, -2.45, 0.25]) {
			cube(size = [height + 2, 1.3, 9.5], center = true);
		}
		translate([0.5, -1.45, 4.9]) {
			cube(size = [height + 2, 3.3, 2.8], center = true);
		}
			
		// motor drive hole
		translate([0.5, 0, 0]) {
			rotate([0, 90, 0]) {
				cylinder(h = height + 2, r = 1.5, center = true, $fn = 100);
			}
		}
		
		// motor screw hole
		translate([0, 10, 0]) {
			rotate([90, 0, 0]) {
				cylinder(h = 9, r = 0.5, $fn = 100);
			}
		}
		translate([0, 13.5, 0]) {
			rotate([90, 0, 0]) {
				cylinder(h = 9, r = 1.5, $fn = 100);
			}
		}
	}
}

motor_slider();
