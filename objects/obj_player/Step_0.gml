var prevX = x
var prevY = y

if keyboard_check(vk_up) {
	check_and_move(self, 0, -move_speed)
}

if keyboard_check(vk_down) {
	check_and_move(self, 0, move_speed)
}

if keyboard_check(vk_left) {
	check_and_move(self, -move_speed, 0)
}

if keyboard_check(vk_right) {
	check_and_move(self, move_speed, 0)
}

/* 
 Set player walking sprite based on movement
 If movement along an axis didn't change but sprite facing that axis
 Means player hasn't moved to new direction so idle animation
*/
if (prevX > x) {
	sprite_index = spr_playerSide	
	image_xscale = -1
} else if (prevX < x) {
	sprite_index = spr_playerSide
	image_xscale = 1
} else if (sprite_index == spr_playerSide) {
	sprite_index = spr_playerSideIdle
}

if (prevY > y) {
	sprite_index = spr_playerUp
} else if (prevY < y) {
	sprite_index = spr_playerDown	
} else if (sprite_index == spr_playerUp) {
	sprite_index = spr_playerUpIdle
} else if (sprite_index == spr_playerDown) {
	sprite_index = spr_playerDownIdle
}

//Tracking closest interactive in range
var interactive_close = instance_nearest(x, y, obj_interactiveBase)
if (interactive_close 
	&& distance_to_object(interactive_close) < interact_range
	&& keyboard_check(ord("E"))) {
	interactive_close.interacted = true
}