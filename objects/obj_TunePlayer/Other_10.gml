current_index = 0;
is_playing_sequence = true;
alarm[0] = 1;
if (is_playing_sequence) exit; // prevent spam during playback

global.last_interaction_time = current_time;
if (global.puzzle_complete) exit;

// Reset player input
global.player_sequence = "";

// Build the sound queue based on the current puzzle sequence
sound_queue = [];
for (var i = 0; i < string_length(global.correct_sequence); i++) {
    var ch = string_char_at(global.correct_sequence, i + 1);
    var snd = ds_map_find_value(global.note_sounds, ch);
    array_push(sound_queue, snd);
}


interacted = false;