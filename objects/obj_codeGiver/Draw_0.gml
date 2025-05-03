draw_self()
if (array_contains(obj_player.inventory, spr_keypadPlate)) {
	draw_sprite_ext(spr_keypadPlate, 0, x, y, 0.5, 0.5, 0, c_red, 1)
	var code_str = obj_devGlobal.code
	for (var i = 1; i <= string_length(code_str); i++) {
		var digit = real(string_char_at(code_str, i));
		if (digit == 0) {
			draw_sprite(spr_keypadLabel, i-1, 
				2136, 463)
		} else {
			draw_sprite(spr_keypadLabel, i-1, 
				2102 + 34 * ((digit - 1) % 3),
				361 + 34 * floor((digit - 1)/3))
		}
	}
} else {
	var prevColor = draw_get_color()
	draw_set_color(c_red)
	draw_text_transformed(2090, 420, "Missing", 1, 1, 90)
	draw_text_transformed(2212, 420, "Something", 1, 1, 270)
	draw_set_color(prevColor)
}
