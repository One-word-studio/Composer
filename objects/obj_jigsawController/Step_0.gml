for (i = 0; i < array_size; i++) {
	var p = pieces[i]
	var p_inst = p.inst
	if (p_inst.locked or p_inst.following_mouse) {
		continue	
	}
	
	if (abs(p_inst.x - p.x) < 3 and abs(p_inst.y - p.y) < 3) {
		p_inst.locked = true
		p_inst.x = p.x
		p_inst.y = p.y
		complete_count += 1
	}
}

if (complete_count == array_size) {
	view_visible[0] = true;
	view_visible[2] = false;
	addToInventory(spr_key)
	complete_count = 0
	obj_jigsawInteractive.active = false
}