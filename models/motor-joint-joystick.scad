// the joint between the motor and the joystick (e.g., https://www.sparkfun.com/products/9032)
// Note: print from small side upwards for best results
module motor_joint_joystick() {
	difference() {
		union() {
			translate([0, 0, -1.5]) {
			cylinder(h = 3, r = 6, center = true, $fn = 100);
			}
			translate([0, 0, 2]) {
			cylinder(h = 4, r1 = 6, r2 = 3, center = true, $fn = 100);
			}
		}
		
		// stepper motor joint hole
		translate([0, 0, -1.75]) {
			cube(size = [7.6, 6.4, 3.5], center = true);
		}
		
		// the navigation switch / encoder hole
		translate([0, 0, 2]) {
			difference() {
				cylinder(h = 4, r = 2.25, center = true, $fn = 100);
				translate([2.75, 0, 0]) { // 1.6 = 2.5 - (1.8 / 2)
					cube(size = [2, 5, 4], center = true);
				}
				translate([-2.75, 0, 0]) { // 1.6 = 2.5 - (1.8 / 2)
					cube(size = [2, 5, 4], center = true);
				}
			}
		}
	}
}

motor_joint_joystick();
