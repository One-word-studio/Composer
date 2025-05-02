if in_range {
	shader_set(sh_whiteout)
	draw_sprite_ext(sprite_index, -1, x, y, 
                (sprite_width + 2) / sprite_get_width(sprite_index), 
                (sprite_height + 2) / sprite_get_height(sprite_index), 
                image_angle, c_white, 1);
	shader_reset()
}
draw_self()