if (array_contains(obj_player.inventory, spr_key)){
	removeFromInventory(spr_key)
	instance_destroy()
	interacted = false
}