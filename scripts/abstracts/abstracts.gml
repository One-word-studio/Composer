function check_and_move(object, xChange = 0, yChange = 0){
	with (object) {
		if place_free(x + xChange + 1 * sign(xChange),
						   y + yChange + 1 * sign(yChange)) {
			x += xChange
			y += yChange
		} 
	}
}