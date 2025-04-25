if (array_contains(obj_player.inventory, spr_pianoKeyPlaceHolder)){
	removeFromInventory(spr_pianoKeyPlaceHolder)
	mp_grid_clear_rectangle(obj_composer.grid, x, y, x + sprite_width, y + sprite_height)
	instance_destroy()
}