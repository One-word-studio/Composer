// Handle 30-second timeout
if (last_interaction_time != -1 && current_time - last_interaction_time > 30000) {
    global.player_sequence = "";
    last_interaction_time = -1;
	audio_play_sound_on(emitter, snd_puzzleFail, false, 1)
}

if (!global.puzzle_complete and interacted) {
	global.player_sequence = "";
	last_interaction_time = current_time;
	event_user(0);
	interacted = false;
}

if (in_range) {
	in_range = false;	
}