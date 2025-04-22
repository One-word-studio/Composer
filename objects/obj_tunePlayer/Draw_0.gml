// Draw the object first
draw_self();

// Draw highlight if player is near (with smooth transition)
if (highlight_alpha > 0) {
    var highlight_color = make_color_rgb(255, 255, 255);
    draw_set_color(merge_color(highlight_color, c_white, highlight_alpha));
    draw_set_alpha(highlight_alpha);
    draw_rectangle(x-sprite_width/2-3, y-sprite_height/2-3, 
                   x+sprite_width/2+3, y+sprite_height/2+3, false);
    draw_set_alpha(1);
}

// Debug info (only if debug_mode is true)
if (global.debug_mode) {
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(x, y-40, "Correct: " + global.correct_sequence);
    draw_text(x, y-20, "Player: " + global.player_sequence);
    draw_text(x, y, "Status: " + string(global.puzzle_complete ? "COMPLETE" : "INCOMPLETE"));
}