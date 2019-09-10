/// @desc Click on GUI
 
if (gui_active) {

	var _x = device_mouse_x_to_gui(0);
	var _y = device_mouse_y_to_gui(0);

	// check if mouse is over gui element
	var _mouseOverGuiElement = point_in_rectangle(_x, _y, x-widthHalf, y-heightHalf, x+widthHalf, y+heightHalf);
	global.mouseOverGuiElement = _mouseOverGuiElement;

	// if click into textField
	if (mouse_check_button_pressed(mb_left) && _mouseOverGuiElement) {
		// rise event
		gui_helper_riseEvents(onClick);
		getString = get_string_async("Input Text", "");
	}
}