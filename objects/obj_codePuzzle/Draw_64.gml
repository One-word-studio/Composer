if (active and interacted) {
	var viewW = view_wport[0];
    var viewH = view_hport[0];

    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(viewW / 2, viewH / 2, "Enter Code: " + inputString);	

	draw_text(100, 100, "TEST CODE: " + obj_codeController.code);	
}
	
	