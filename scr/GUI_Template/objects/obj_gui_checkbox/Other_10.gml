/// @desc Click on GUI

if (gui_active) {

	var _x = device_mouse_x_to_gui(0);
	var _y = device_mouse_y_to_gui(0);

	// check if mouse is over gui element
	var _mouseOverGuiElement = position_meeting(_x, _y, self);
	global.mouseOverGuiElement = _mouseOverGuiElement;

	// if clicked into checkbox
	if (mouse_check_button_released(mb_left) && _mouseOverGuiElement) {
		cb_state = !cb_state;
		gui_helper_riseEvents(onRelease);
	}
	image_index = cb_state;
}