// Convert seconds to steps
var fade_in_steps = fade_in_duration * 60;
var fade_out_steps = fade_out_duration * 60;
var pause_steps = pause_duration * 60;

switch (fade_state) {
    case 0: // Fade In
        fade_in_timer++;
        image_alpha = fade_in_timer / fade_in_steps;
        if (fade_in_timer >= fade_in_steps) {
            fade_state = 1; // Move to pause state
            pause_timer = 0;
        }
        break;

    case 1: // Pause
        pause_timer++;
        if (pause_timer >= pause_steps) {
            fade_state = 2; // Move to fade out state
            fade_out_timer = 0;
        }
        break;

    case 2: // Fade Out
        fade_out_timer++;
        image_alpha = 1 - (fade_out_timer / fade_out_steps);
        if (fade_out_timer >= fade_out_steps) {
            fade_state = 3; // Finished
            instance_destroy(); // Destroy the object
        }
        break;

    case 3: //Finished
        break;
}

// Ensure alpha is within valid range
image_alpha = clamp(image_alpha, 0, 1);