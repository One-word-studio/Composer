alarm[0] = 60 * 7;
// Variables for fade control
image_alpha = 0; 
fade_in_duration = 2; // Fade-in duration in seconds
fade_out_duration = 2; // Fade-out duration in seconds
fade_in_timer = 0;
fade_out_timer = 0;
fade_state = 0; // 0: Fade In, 1: Pause, 2: Fade Out, 3: Finished
pause_duration = 3; // Pause duration between fade in and fade out in seconds
pause_timer = 0;