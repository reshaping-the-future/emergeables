// the button that users interact with
module motor_button() {
	height = 19;
	radius = 7.5;

	rotate([0, 90, 0]) {
		difference() {
			// slider body
			minkowski() {
				cube([height, 7, 7], center = true);
				rotate([0, 90, 0]) {
					cylinder(r = 1.5, h = 1, $fn = 100);
				}
			}
			
			// interior cut-out
			minkowski() {
				cube([height + 2, 7, 7], center = true);
				rotate([0, 90, 0]) {
					cylinder(r = 0.5, h = 1, $fn = 100);
				}
			}
		}
		
		// rounded button
		translate([height - 7.5, 0, 0]) {
			rotate([0, 90, 0]) {
				difference() {
					union() {
						sphere(radius, $fn = 100);
						cylinder(h = 2, r = radius, $fn = 100);
					}
					translate([0, 0, 1]) {
						cylinder(h = 8, r = 10, $fn = 100);
					}
					translate([0, 0, -5.5]) {
						minkowski() {
							cube([7, 7, 7], center = true);
							cylinder(r = 1.5, h = 1, $fn = 100);
						}
						
					}
				}
			}
		}
	}
}

motor_button();
