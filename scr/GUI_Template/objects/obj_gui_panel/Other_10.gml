/// @desc Click on GUI

if (gui_active) {
	var _x = device_mouse_x_to_gui(0);
	var _y = device_mouse_y_to_gui(0);

	// check if mouse is over gui element
	var _xx =  panel_useDefault? PANEL_HEAD_SIZE : 0;
	var _mouseOverGuiElement = point_in_rectangle(_x, _y, x, y, x+panel_size[0], y+panel_size[1] +_xx);
	global.mouseOverGuiElement = _mouseOverGuiElement;
	
	if (panel_isMoveable) {
		var _headColl = point_in_rectangle(_x, _y, x, y, x+panel_size[0], y+PANEL_HEAD_SIZE);
		if (mouse_check_button_pressed(mb_left) && _headColl) {
			movePanelOffset[0] = _x - x;
			movePanelOffset[1] = _y - y;
			movePanelFlag = true;
			stopSliding = true;
		}
	
		if (mouse_check_button(mb_left) && movePanelFlag) {
			x = _x - movePanelOffset[0];
			y = _y - movePanelOffset[1];
			event_user(2);
		}
	
		if (movePanelFlag && mouse_check_button_released(mb_left)) {
			movePanelFlag = false;
			stopSliding = false;		
			gui_activePos = [x, y];		
		}
	}
}else{
	stopSliding = false;
}