if (!reached_target) {
    // Move upward until reaching target position
    y -= scroll_speed;
    
    // Check if we've reached or passed the target
    if (y <= target_y) {
        y = target_y;
        reached_target = true;
        
        // Create the blinking image when we stop
        instance_create_layer(x, y, layer, obj_end);
    }
}