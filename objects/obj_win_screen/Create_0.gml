// Create Event
photo_index = 0;            // Current photo being displayed
timer = 0;                  // Timer for transitions and final wait
transition_alpha = 0;       // Alpha value for smooth transitions
transition_speed = 0.05;    // Speed of fade in/out
photos = [                  // Array of sprite indices
    spr_win_photo1, 
    spr_win_photo2,
    spr_win_photo3,
    spr_win_photo4,
    spr_win_photo5
];
display_time = 1.5;         // Time each photo is displayed (seconds)
final_wait_time = 3.5;      // Time to wait after last photo (seconds)
is_transitioning = false;
show_final_photo = false;   // Flag for when we're showing the last photo
current_photo = photos[0];
next_photo = photos[1];

// Store view dimensions for fullscreen drawing
view_width = 1920;
view_height = 1080;