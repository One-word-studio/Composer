if in_range {
	shader_set(sh_whiteout)
	draw_sprite_stretched(sprite_index, -1, x-1, y-1, sprite_width + 2, sprite_height + 2)	
	shader_reset()
}
draw_self()