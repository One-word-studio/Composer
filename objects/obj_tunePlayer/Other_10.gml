if (is_playing_sequence) exit;

current_index = 0;
is_playing_sequence = true;

// Build sound queue
sound_queue = [];
for (var i = 0; i < string_length(global.correct_sequence); i++) {
    var ch = string_char_at(global.correct_sequence, i + 1);
    var snd = ds_map_find_value(global.note_sounds, ch);
    array_push(sound_queue, snd);
}

alarm[0] = 1;