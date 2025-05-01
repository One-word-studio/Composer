if (!reached_target) {
    // Move upward
    y -= scroll_speed;
    
    // Check if we've reached or passed the target position
    if (y <= target_y) {
        y = target_y; // Snap to exact position
        reached_target = true; // Stop scrolling
    }
}

// Rest of your code for room switching and quitting
if (keyboard_check_pressed(ord("R"))) {
    room_goto(Main);
}
if (keyboard_check_pressed(ord("Q"))) {
    game_end();
}