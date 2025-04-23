if (!solved and active) {
	image_angle += rotationSpeed * delta_time / 1000000;
	if (keyboard_check_pressed(vk_space)) {
		active = false;
		alarm_set(0, 30);
		if (abs(angle_difference(image_angle, targetRotation)) < 15) {
			solved = true;
			image_alpha = 0.2;
		}
	}
}
show_debug_log(true)
show_debug_message(active)