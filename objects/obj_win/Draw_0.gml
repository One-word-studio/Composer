// Save current font to restore later
var _old_font = draw_get_font();

// Set custom font and styling
draw_set_font(custom_fnt);  // Your predefined font
draw_set_halign(fa_center); // Center alignment
draw_set_valign(fa_middle); // Vertical middle
draw_set_color(text_color); // Set color
draw_set_alpha(text_alpha); // Set transparency

// Draw scaled text
draw_text_transformed(text_x, text_y, text_to_display, text_scale, text_scale, 0);

// Restore original font (good practice)
draw_set_font(_old_font);
draw_set_alpha(1); // Reset alpha