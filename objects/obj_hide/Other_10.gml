interacted = false
active = false

if obj_player.visible {
	alarm_set(0, 60)
} else {
	alarm_set(0, 1)
}

if (obj_player.visible) {
	obj_player.visible = false	
	if collision_line(obj_composer.x, obj_composer.y, obj_player.x, obj_player.y, obj_block, false, false) {
		obj_composer.player_hidden = true
	} else {
		with (obj_composer) {
			var direction_to_player = point_direction (x, y-35, obj_player.x , obj_player.y);
			var angleToTarget = angle_difference(direction_to_player, angle);
		
			if (abs(angleToTarget) > 60 + chasing * 10) {
				obj_composer.player_hidden = true
			}
		}
	}
} else {
	obj_player.visible = true
	obj_composer.player_hidden = false
}


   