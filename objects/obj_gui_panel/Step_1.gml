/// @desc

event_inherited();

// outside room -> deactivate components
if ( 
	x > display_get_gui_width() ||
	x+panel_size[0] < 0 ||
	y-panel_size[1] > display_get_gui_height() ||
	y+panel_size[1] < 0) {
		
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


// change position of components relative to panel position
var _panX = x;
var _panY = y ;
for (var _i=0; _i<ds_list_size(panelComponents); _i++) {
	
	with (panelComponents[| _i]) {
		x = _panX + panelOffset[0];
		y = _panY + panelOffset[1] + PANEL_HEAD_SIZE;
	}
}

