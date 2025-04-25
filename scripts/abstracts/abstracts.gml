function check_and_move(object, xChange = 0, yChange = 0){
	with (object) {
		if place_free(x + xChange + 1 * sign(xChange),
						   y + yChange + 1 * sign(yChange)) {
			x += xChange
			y += yChange
		} 
	}
}

function addToInventory(item) {
	with (obj_player) {
		if (array_length(inventory) == 2) {
			return false;	
		} else {
			array_push(inventory, item)
			return true;	
		}
	}
}

function removeFromInventory(item) {
	with (obj_player) {
		for (var i = 0; i < array_length(inventory); i++) {
			if (inventory[i] == item) {
				array_delete(inventory, i, 1)	
			}
		}
		return false;	
	}
}