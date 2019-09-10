/// @desc

// set destination position
if (active) {
	panelDestPos[0] = activePos[0];
	panelDestPos[1] = activePos[1];
}else{
	panelDestPos[0] = inactivePos[0];
	panelDestPos[1] = inactivePos[1];
}


// outside room -> deactivate components
if ( 
	x > display_get_gui_width() ||
	x+panelSize[0] < 0 ||
	y-panelSize[1] > display_get_gui_height() ||
	y+panelSize[1] < 0) {
		
	if (!componentsDeactivated) {
		for (var _i=0; _i<ds_list_size(panelComponents); _i++) {
			instance_deactivate_object(panelComponents[| _i]);
		}
		componentsDeactivated = true;
	}
}else{
		for (var _i=0; _i<ds_list_size(panelComponents); _i++) {
			instance_activate_object(panelComponents[| _i]);
		}
		componentsDeactivated = false;
}


// change position
x += (panelDestPos[0] - x) *panelSpeed;
y += (panelDestPos[1] - y) *panelSpeed;

// change position of components relative to panel position

var _panX = x;
var _panY = y ;
for (var _i=0; _i<ds_list_size(panelComponents); _i++) {
	
	with (panelComponents[| _i]) {
		x = _panX + panelOffset[0];
		y = _panY + panelOffset[1] + PANEL_HEAD_SIZE;
	}
}

