if (paused) {
	path_speed = 0;
	return
}

if instance_exists(target)
{
    if mp_grid_path(grid, path, x, y, target.x, target.y-16, 0)
    {
        path_start(path, 2 + chasing * 0.5, 0, 0)
		
		if (audio_is_playing(snd_composerSong)) {
			audio_stop_sound(snd_composerSong);
		}
		if (!sound_triggered && !audio_is_playing(snd_composerTriggered)) {
			audio_play_sound(snd_composerTriggered, 1, false)
			sound_triggered = true
		}
    }
	target = noone
}

var deltaX = prevX - x
var deltaY = prevY - y

if (deltaX > 1) {
	sprite_index = spr_composerSide	
	image_xscale = -1
	angle = 180
} else if (deltaX < -1) {
	sprite_index = spr_composerSide
	image_xscale = 1
	angle = 0
} else if (sprite_index == spr_composerSide) {
	sprite_index = spr_composerSideIdle
}

if (deltaY > 1) {
	sprite_index = spr_composerUp
	angle = 90
} else if (deltaY < -1) {
	sprite_index = spr_composerDown
	angle = 270
} else if (sprite_index == spr_composerUp) {
	sprite_index = spr_composerUpIdle
} else if (sprite_index == spr_composerDown) {
	sprite_index = spr_composerDownIdle
}

if obj_player.visible and 
	(not chasing) and
	not collision_line(x, y, obj_player.x, obj_player.y, obj_block, false, false) {
		
	var direction_to_player = point_direction (x, y-35, obj_player.x , obj_player.y);
    var angleToTarget = angle_difference(direction_to_player, angle);
	if (abs(angleToTarget) < 60 + chasing * 10) {
		chasing = true
		target = obj_player
		if (audio_is_playing(snd_composerSong)) {
			audio_stop_sound(snd_composerSong);
		}
		if (!sound_triggered && !audio_is_playing(snd_composerTriggered)) {
			audio_play_sound(snd_composerTriggered, 1, false)
			sound_triggered = true
		}
    }
} else {
	chasing = false
	sound_triggered = false
}
if (chasing) {
	if (!audio_is_playing(snd_composerTriggered)) {
		audio_play_sound(snd_composerTriggered, 1, false);
	}
}

if (!string_ends_with(sprite_get_name(sprite_index), "Idle")) {
	if !audio_is_playing(snd_composerStep) {
		audio_play_sound_on(emitter, snd_composerStep, false, 1)
	}
} else {
	audio_stop_sound(snd_composerStep)
}
audio_emitter_position(emitter, x, y, 0);

prevX = x
prevY = y