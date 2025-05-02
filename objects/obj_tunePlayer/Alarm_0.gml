if (current_index < array_length(sound_queue)) {
    audio_stop_all();
    var snd = sound_queue[current_index];
    audio_play_sound(snd, 1, false);
    current_index++;
    alarm[0] = 60; // Half-second between notes
} else {
    is_playing_sequence = false;
    current_index = 0;
    
    // Check puzzle completion
    if (global.player_sequence == global.correct_sequence) {
        global.puzzle_complete = true;
        // Add completion effects here
    } else if (string_length(global.player_sequence) >= string_length(global.correct_sequence)) {
        audio_play_sound(snd_error, 1, false);
        global.player_sequence = "";
    }
}