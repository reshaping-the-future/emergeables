// the joint between the actuator and the navigation switch (e.g., ALPS RKJXT1F42001; https://uk.rs-online.com/web/p/joystick-switches/1239636/)
module motor_joint_navigation_switch() {
	radius = 6;
	height = 10;

	difference() {
		cylinder(h = height, r = radius, center = true);

		// stepper motor joint hole
		translate([0, 0, -((height / 2) - (height / 4))]) {
			cube(size = [6.2, 7.4, height / 2], center = true);
		}
		
		// the navigation switch / encoder hole
		translate([0, 0, ((height / 2) - (height / 4))]) {
			difference() {
				cylinder(h = height / 2, r = 1.45, center = true, $fn = 20);
				translate([1.6, 0, 0]) { // 1.6 = 2.5 - (1.8 / 2)
					cube(size = [1.8, 5, height / 2], center = true);
				}
			}
		}
	}
}

motor_joint_navigation_switch();
