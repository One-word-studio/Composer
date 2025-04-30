if (!audio_is_playing(snd_clock)) {
	audio_play_sound_on(emitter, snd_clock, false, 1, 0.3, 0, 0.9);
}
audio_emitter_position(emitter, x, y, 0);