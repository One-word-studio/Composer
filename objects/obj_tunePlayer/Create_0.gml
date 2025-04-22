// Initialize variables
sound_queue = [];
current_index = 0;
interacted = false;
in_range = false;
is_playing_sequence = false;
last_interaction_time = -1;
highlight_alpha = 0;

// Initialize global variables if they don't exist
if (!variable_global_exists("correct_sequence")) {
    global.correct_sequence = "";
    var notes = ["A", "B", "C", "D"];
    repeat(6) { // 6-note sequence
        global.correct_sequence += notes[irandom_range(0, 3)];
    }
}

if (!variable_global_exists("note_sounds")) {
    global.note_sounds = ds_map_create();
    ds_map_add(global.note_sounds, "A", snd_A);
    ds_map_add(global.note_sounds, "B", snd_B);
    ds_map_add(global.note_sounds, "C", snd_C);
    ds_map_add(global.note_sounds, "D", snd_D);
}

if (!variable_global_exists("player_sequence")) {
    global.player_sequence = "";
}

if (!variable_global_exists("debug_mode")) {
    global.debug_mode = false; // Default to false
}

if (!variable_global_exists("puzzle_complete")) {
    global.puzzle_complete = false;
}