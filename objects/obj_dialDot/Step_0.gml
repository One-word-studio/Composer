if (!solved and active) {
	image_angle += rotationSpeed * delta_time / 1000000;
	if (keyboard_check_pressed(vk_space)) {
		active = false;
		alarm_set(0, 30);
		if (abs(angle_difference(image_angle, targetRotation)) < 15) {
			completions++;
			image_alpha = 0.2;
			// Dial puzzle completed
			if (completions == 3) {
				solved = true;
				addToInventory(spr_keypadPlate)
				view_visible[0] = true;
				view_visible[1] = false;
			}
			// More completions required
			else {
				event_user(0);
			}
		}
	}
}