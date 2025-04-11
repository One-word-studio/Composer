if instance_exists(obj_player) && keyboard_check_pressed(vk_space)
{
    if mp_grid_path(grid, path, x, y, obj_player.x, obj_player.y, 0)
    {
        path_start(path, 2, 0, 0);
    }
}


var deltaX = prevX - x
var deltaY = prevY - y

if (deltaX > 1) {
	sprite_index = spr_composerSide	
	image_xscale = -1
} else if (deltaX < -1) {
	sprite_index = spr_composerSide
	image_xscale = 1
} else if (sprite_index == spr_composerSide) {
	sprite_index = spr_composerSideIdle
}

if (deltaY > 1) {
	sprite_index = spr_composerUp
} else if (deltaY < -1) {
	sprite_index = spr_composerDown	
} else if (sprite_index == spr_composerUp) {
	sprite_index = spr_composerUpIdle
} else if (sprite_index == spr_composerDown) {
	sprite_index = spr_composerDownIdle
}

prevX = x
prevY = y