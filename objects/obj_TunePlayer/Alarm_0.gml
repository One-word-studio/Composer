if (current_index < array_length(sound_queue)) {
    audio_stop_all(); // just to be safe — remove if you want overlap with crystal sounds
    var snd = sound_queue[current_index];
    audio_play_sound(snd, 1, false);
    current_index++;
    alarm[0] = room_speed / 2;
} else {
    is_playing_sequence = false;
    current_index = 0;
}
