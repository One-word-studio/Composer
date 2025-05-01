pieces = [
{
	sprite: spr_jigsawKeyPieces_0,
	x: 103,
	y: 38
}, {
	sprite: spr_jigsawKeyPieces_1,
	x: 127,
	y: 46
}, {
	sprite: spr_jigsawKeyPieces_2,
	x: 146,
	y: 77
}, {
	sprite: spr_jigsawKeyPieces_3,
	x: 153,
	y: 101
}]
array_size = array_length(pieces)
complete_count = 0

for (i = 0; i < array_size; i++) {
	pieces[i].x += x
	pieces[i].y += y
	
	pieces[i].inst = instance_create_depth(
		x  + random(270), y + random(120), 
		10, obj_jigsawPiece, {
		sprite_index: pieces[i].sprite
	})
}