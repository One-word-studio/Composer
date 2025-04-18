// Puzzle configuration
puzzle_sequence = ["B", "C", "A", "D", "B", "C"]; // BCADBC
player_sequence = [];
sequence_timeout = 30 * room_speed; // 30 seconds in frames
current_time = 0;
puzzle_solved = false;

// Sound references
sound_a = snd_crystal_A;
sound_b = snd_crystal_B;
sound_c = snd_crystal_C;
sound_d = snd_crystal_D;
sound_success = snd_success;
sound_fail = snd_error;

// Object references
chest = noone;
tune_player = noone;