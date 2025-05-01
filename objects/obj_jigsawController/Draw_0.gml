draw_self()
shader_set(sh_greyout)
for (i = 0; i < array_size; i++){
	var p = pieces[i]
	draw_sprite_ext(p.sprite, 0, p.x, p.y, 1, 1, 0, c_white, 0.5)	
}
shader_reset()