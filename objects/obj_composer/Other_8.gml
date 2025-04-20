if going_back {
	sprite_index = spr_composerUp
	angle = 90
	going_back = false
} else if (target == noone) {
	alarm_set(11, 30)	
}