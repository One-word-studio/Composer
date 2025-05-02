grid = mp_grid_create(0, 0, room_width / 32, room_height / 32, 32, 32);
mp_grid_add_instances(grid, obj_block, false);
mp_grid_add_instances(grid, obj_blockClear, false)
mp_grid_add_instances(grid, obj_door, false)
path = path_add()

prevX = 9999
prevY = 9999

emitter = audio_emitter_create();
audio_emitter_falloff(emitter, 100, 2500, 1)
sound_triggered = false

target = noone
chasing = false
search = 0
going_back = false
//Unit circle format
angle = 90

paused = false
player_hidden = false