draw_sprite_ext(spr_inventory, 0, 5, 1075, 5, 5, 0, c_white, 1)
for (var i = 0; i < array_length(inventory); i++) {
	draw_sprite_stretched(inventory[i], -1, 33 + 84*i, 983, 64, 64)
}