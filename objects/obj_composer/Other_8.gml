if (paused) { return }

if going_back {
	sprite_index = spr_composerUp
	angle = 90
	going_back = false
	if (!audio_is_playing(snd_composerSong)) {
		audio_play_sound_on(emitter, snd_composerSong, true, 1, 0.6);
	}
} else if (target == noone) {
	alarm_set(11, 30)	
}