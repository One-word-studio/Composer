pieces = [
{
	sprite: spr_missingpianokeys_S,
	x: 58,
	y: 65.5
}, {
	sprite: spr_missingpianokeys_Lr,
	x: 180,
	y: 65.5
}, {
	sprite: spr_missingpianokeys_Tf,
	x: 99.5,
	y: 95
}, {
	sprite: spr_missingpianokeys_L,
	x: 231.5,
	y: 95
}]
array_size = array_length(pieces)
complete_count = 0

for (i = 0; i < array_size; i++) {
	pieces[i].x += x
	pieces[i].y += y
	
	pieces[i].inst = instance_create_depth(
		x + random(270), y + random(120), 
		10, obj_jigsawPiece, {
		sprite_index: pieces[i].sprite
	})
}