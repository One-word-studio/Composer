if (active) {
    // --- Handle Input ---
    for (var i = ord("0"); i <= ord("9"); i++) {
        if (keyboard_check_pressed(i)) {
            if (string_length(inputString) < maxDigits) {
                inputString += chr(i);
            }
        }
    }

    // Backspace
    if (keyboard_check_pressed(vk_backspace)) {
        inputString = string_copy(inputString, 1, string_length(inputString) - 1);
    }

    // Enter
    if (keyboard_check_pressed(vk_enter)) {
        if (inputString == global.code) {
            show_message("Correct! Unlocked!");
            // Do unlock logic here
            active = false;
        } else {
            show_message("Incorrect!");
            inputString = ""; // Reset
        }
    }

    // --- Draw Text in Viewport 0 Center ---
    var viewX = view_xview[0];
    var viewY = view_yview[0];
    var viewW = view_wview[0];
    var viewH = view_hview[0];

    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(viewX + viewW / 2, viewY + viewH / 2, "Enter Code: " + inputString);
}
