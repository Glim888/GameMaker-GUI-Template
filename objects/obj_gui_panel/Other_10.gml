/// @desc Click on GUI

if (gui_active) {
	var _x = device_mouse_x_to_gui(0);
	var _y = device_mouse_y_to_gui(0);

	// check if mouse is over gui element
	var _mouseOverGuiElement = point_in_rectangle(_x, _y, x, y, x+panel_size[0], y+panel_size[1]);
	global.mouseOverGuiElement = _mouseOverGuiElement;
	
	
}