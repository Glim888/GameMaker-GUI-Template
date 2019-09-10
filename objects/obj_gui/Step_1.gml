/// @desc


if (gui_myPanel == noone) {
	// set destination position
	if (gui_active) {
		destPos[0] = gui_activePos[0];
		destPos[1] = gui_activePos[1];
	}else{
		destPos[0] = gui_inactivePos[0];
		destPos[1] = gui_inactivePos[1];
	}

	// change position
	x += (destPos[0] - x) *gui_slideSpeed;
	y += (destPos[1] - y) *gui_slideSpeed;
}