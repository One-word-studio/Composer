draw_set_alpha(1);           // Ensures full opacity
draw_set_color(c_white);     // Ensures it's drawn in solid white (or your desired color)
draw_set_font(fnt_tutorialText); 
draw_text_transformed(x, y, text, 0.4, 0.4, 0); // Use scale 1 for sharp text
