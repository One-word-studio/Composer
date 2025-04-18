if (!puzzle_solved && array_length(player_sequence) > 0) {
    curr_time++;
    
    // Check for timeout
    if (curr_time >= sequence_timeout) {
        audio_play_sound(snd_error, 1, false);
        player_sequence = [];
        curr_time = 0;
    }
}