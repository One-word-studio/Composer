// Inherit the parent event
event_inherited();

note = "A" // Identifies which key this is

emitter = audio_emitter_create();
audio_emitter_falloff(emitter, 100, 2500, 1)
audio_emitter_position(emitter, x, y, 0);