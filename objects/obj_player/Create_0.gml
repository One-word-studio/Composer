move_speed = 3
interact_range = 64
inventory = []

audio_listener_orientation(0, 0, 1, 0, -1, 0);
audio_falloff_set_model(audio_falloff_exponent_distance_scaled)
emitter = audio_emitter_create();
audio_emitter_falloff(emitter, 100, 2500, 1)