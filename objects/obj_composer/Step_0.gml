if instance_exists(obj_player) && keyboard_check_pressed(vk_space)
{
    if mp_grid_path(grid, path, x, y, obj_player.x, obj_player.y, 0)
    {
        path_start(path, 2, 0, 0);
    }
}


var deltaX = prevX - x
var deltaY = prevY - y

if (deltaX > 1) {
	sprite_index = spr_composerSide	
	image_xscale = -1
} else if (deltaX < -1) {
	sprite_index = spr_composerSide
	image_xscale = 1
} else if (sprite_index == spr_composerSide) {
	sprite_index = spr_composerSideIdle
}

if (deltaY > 1) {
	sprite_index = spr_composerUp
} else if (deltaY < -1) {
	sprite_index = spr_composerDown
} else if (sprite_index == spr_composerUp) {
	sprite_index = spr_composerUpIdle
} else if (sprite_index == spr_composerDown) {
	sprite_index = spr_composerDownIdle
}

if (!string_ends_with(sprite_get_name(sprite_index), "Idle")) {
	if !audio_is_playing(snd_step) {
		//audio_play_sound(snd_step, 1, 1)
		audio_play_sound_on(emitter, snd_step, false, 1)
	}
} else {
	audio_stop_sound(snd_step)
}
audio_emitter_position(emitter, x, y, 0);

prevX = x
prevY = y