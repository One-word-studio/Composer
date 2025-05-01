// Only start blinking when image1 has stopped
if (obj_credits.reached_target) {
    visible = true;
    
    // Update alpha value
    alpha += fade_speed * fade_direction;
    
    // Reverse direction when hitting limits
    if (alpha >= 1) {
        alpha = 1;
        fade_direction = -1;
    } else if (alpha <= 0) {
        alpha = 0;
        fade_direction = 1;
    }
    
    // Set the image alpha
    image_alpha = alpha;
}