if (active and interacted) {
	var viewW = view_wport[0];
    var viewH = view_hport[0];
	
	draw_sprite_ext(spr_codePuzzleImage, 0, 960, 540, 8, 8, 0, c_white, 1)
	for (var i = 1; i <= string_length(inputString); i++) {
		var digit = real(string_char_at(inputString, i));
		draw_sprite(spr_numbersCode, digit, 628 + 185 * (i - 1), 507)
	}
}
	
	