/// @desc


if (gui_myPanel == noone && ! stopSliding) {
	// set destination position
	if (gui_active) {
		destPos[0] = gui_activePos[0];
		destPos[1] = gui_activePos[1];
	}else{
		destPos[0] = gui_inactivePos[0];
		destPos[1] = gui_inactivePos[1];
	}

	// if global.useDesigner add components to panel
	if (global.useDesigner) gui_helper_panel_addComponentAuto();
	
	// change position
	x += (destPos[0] - x) *gui_slideSpeed;
	y += (destPos[1] - y) *gui_slideSpeed;
	
}


