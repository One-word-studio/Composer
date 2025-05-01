// Step Event
timer += delta_time / 1000000; // Convert to seconds

if (!show_final_photo) {
    // Normal photo sequence logic
    if (timer >= display_time && photo_index < array_length(photos) - 1 && !is_transitioning) {
        is_transitioning = true;
        timer = 0;
    }

    // Handle transitions between photos
    if (is_transitioning) {
        transition_alpha += transition_speed;
        
        // When transition is complete
        if (transition_alpha >= 1) {
            transition_alpha = 0;
            photo_index++;
            current_photo = photos[photo_index];
            
            // Check if we've reached the final photo
            if (photo_index >= array_length(photos) - 1) {
                show_final_photo = true;
                timer = 0; // Reset timer for final wait period
            } else {
                next_photo = photos[photo_index + 1];
            }
            
            is_transitioning = false;
        }
    }
} else {
    // We're showing the final photo - wait before room transition
    if (timer >= final_wait_time) {
        room_goto(Win); // Move to next room after final wait
    }
}