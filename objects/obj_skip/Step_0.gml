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