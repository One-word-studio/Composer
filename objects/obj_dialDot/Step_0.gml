if (!solved) {
	if (active) {
		image_angle += rotationSpeed * delta_time / 1000000;
	}
	if (keyboard_check_pressed(vk_space)) {
		active = false;
		alarm_set(0, 60);
		if (abs(angle_difference(image_angle, targetRotation)) < 10) {
			solved = true;
			image_alpha = 0.2;
		}
	}
}
