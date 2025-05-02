if (interacted) {
    // --- Handle Input ---
    for (var i = ord("0"); i <= ord("9"); i++) {
        if (keyboard_check_pressed(i)) {
            if (string_length(inputString) < maxDigits) {
                inputString += chr(i);
            }
        }
    }

	// Backspace
    if (keyboard_check_pressed(vk_escape)) {
		interacted = false;
        inputString = "";
    }

    // Backspace
    if (keyboard_check_pressed(vk_backspace)) {
        inputString = string_copy(inputString, 1, string_length(inputString) - 1);
    }

    // Enter
    if (keyboard_check_pressed(vk_enter)) {
        alarm_set(0, 1)
    } else if (alarm_get(0) = -1 and string_length(inputString) == 4) {
		alarm_set(0, 30)
	}
}
