if (active and interacted) {
	var viewW = view_wport[0];
    var viewH = view_hport[0];

    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	draw_rectangle_color(viewW / 2 - 500, viewH / 2 - 150, viewW / 2 + 500, viewH / 2 + 150, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
    draw_text_transformed(viewW / 2, viewH / 2, "Enter Code: " + inputString, 5, 5, 0);	

	draw_text(100, 100, "TEST CODE: " + obj_devGlobal.code);	
}
	
	