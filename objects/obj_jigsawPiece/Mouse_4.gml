if (locked) {
	return
}

with (obj_jigsawPiece) {
	following_mouse = false	
}
relative_x = round(x - mouse_x)
relative_y = round(y - mouse_y)
following_mouse = true
