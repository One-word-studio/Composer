if (startX - other.x < 5 and startY - other.y < 5) return;

startX = other.x
startY = other.y

obj_composer.target = self
part_particles_burst(global.particleSystem, x, y, particleSound)
part_particles_burst(global.particleSystem, x, y, particleSound)
if (!audio_is_playing(snd_squeakyFloor)) {
	audio_play_sound_on(emitter, snd_squeakyFloor, false, 1)
}