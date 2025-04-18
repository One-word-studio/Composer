if (!puzzle_solved && player_sequence.length > 0) {
    current_time++;
    
    // Check for timeout
    if (current_time >= sequence_timeout) {
        audio_play_sound(snd_error, 1, false);
        player_sequence = [];
        current_time = 0;
    }
}