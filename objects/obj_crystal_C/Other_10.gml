global.last_interaction_time = current_time;
if (global.puzzle_complete) exit;

var note = "C"; // Change to "B", "C", or "D" in respective objects
var snd = ds_map_find_value(global.note_sounds, note);
audio_play_sound(snd, 1, false);

global.player_sequence += note;

if (string_length(global.player_sequence) == string_length(global.correct_sequence)) {
    if (global.player_sequence == global.correct_sequence) {
        show_debug_message("Puzzle Solved!");
        global.puzzle_complete = true;
        // Trigger reward
    } else {
        show_debug_message("Wrong sequence. Resetting...");
        global.player_sequence = "";
    }
}
interacted = false;