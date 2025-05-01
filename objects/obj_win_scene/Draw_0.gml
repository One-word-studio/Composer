// Draw Event
// Clear the screen with black background
draw_clear(c_black);

// Calculate fullscreen dimensions
var _x1 = 0;
var _y1 = 0;
var _x2 = view_width;
var _y2 = view_height;

if (is_transitioning && !show_final_photo) {
    // Draw current photo fading out (fullscreen)
    draw_sprite_stretched_ext(current_photo, 0, _x1, _y1, _x2, _y2, c_white, 1 - transition_alpha);
    
    // Draw next photo fading in (fullscreen)
    draw_sprite_stretched_ext(next_photo, 0, _x1, _y1, _x2, _y2, c_white, transition_alpha);
} else {
    // Draw current photo at full opacity (fullscreen)
    draw_sprite_stretched_ext(current_photo, 0, _x1, _y1, _x2, _y2, c_white, 1);
}