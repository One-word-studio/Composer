// Note sounds map
global.note_sounds = ds_map_create();
ds_map_add(global.note_sounds, "A", snd_A);
ds_map_add(global.note_sounds, "B", snd_B);
ds_map_add(global.note_sounds, "C", snd_C);
ds_map_add(global.note_sounds, "D", snd_D);

// Generate random correct sequence
global.correct_sequence = "";
var len = 4;
for (var i = 0; i < len; i++) {
    var pick = choose("A", "B", "C", "D");
    global.correct_sequence += pick;
}

global.player_sequence = "";
global.puzzle_complete = false;
global.last_interaction_time = current_time;
