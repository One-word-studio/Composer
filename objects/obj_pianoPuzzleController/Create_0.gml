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

var xModifier = (x - sprite_width/2)
var yModifier = (y - sprite_height/2)

for (i = 0; i < array_size; i++) {
	pieces[i].x += xModifier
	pieces[i].y += yModifier
	
	pieces[i].inst = instance_create_depth(
		xModifier + 10 + random(270), yModifier + 10 + random(120), 
		10, obj_jigsawPiece, {
		sprite_index: pieces[i].sprite
	})
}