if (array_contains(obj_player.inventory, spr_musicSheet)) {
	instance_destroy(blocker)
	instance_destroy()
} else {
	exit_attempt = true
}