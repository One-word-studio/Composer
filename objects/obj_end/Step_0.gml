// Increment the timer
blink_timer++;

// Check if it's time to blink
if (blink_timer >= blink_interval)
{
    // Toggle the visibility
    visible = !visible;

    // Reset the timer
    blink_timer = 0;
}
if (keyboard_check_pressed(ord("R"))) {
    room_goto(Main);
}
if (keyboard_check_pressed(ord("Q"))) {
    game_end();
}