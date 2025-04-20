interacted = false
active = false

if obj_player.visible {
	alarm_set(0, 60)
} else {
	alarm_set(0, 1)
}

with (obj_player) {
	visible = !visible
}