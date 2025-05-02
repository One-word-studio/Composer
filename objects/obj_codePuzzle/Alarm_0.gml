if (inputString == obj_devGlobal.code) {
	// Do unlock logic here
	active = false;
	interacted = false;
	removeFromInventory(spr_keypadPlate)
	addToInventory(spr_musicSheet)
} else {
	inputString = ""; // Reset
}