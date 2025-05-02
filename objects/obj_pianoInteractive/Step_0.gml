if (active and interacted) {
	if (array_contains(obj_player.inventory, spr_missingpianokeys)) {
		event_user(0)	
	} else {
		interacted = false	
	}
		
}

if (in_range) {
	in_range = false	
}