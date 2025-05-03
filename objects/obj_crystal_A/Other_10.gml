global.last_interaction_time = current_time;
if (global.puzzle_complete) exit;

var snd = ds_map_find_value(global.note_sounds, note);
audio_play_sound_on(emitter, snd, false, 1)

global.player_sequence += note;

if (string_length(global.player_sequence) == string_length(global.correct_sequence)) {
    if (global.player_sequence == global.correct_sequence) {
        global.puzzle_complete = true;
        // Trigger reward
		addToInventory(spr_missingpianokeys)
		audio_play_sound_on(emitter, snd_success, false, 1)
    } else {
        global.player_sequence = "";
		audio_play_sound_on(emitter, snd_puzzleFail, false, 1)
    }
}
interacted = false;