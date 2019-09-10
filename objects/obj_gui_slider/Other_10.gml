/// @desc Click on GUI

if (gui_active) {

	var _x = device_mouse_x_to_gui(0);
	var _y = device_mouse_y_to_gui(0);

	// check if mouse is over gui element
	var _mouseOverGuiElement = point_in_rectangle(_x, _y, x-widthHalf, y-heightHalf, x+widthHalf, y+heightHalf);
	global.mouseOverGuiElement = _mouseOverGuiElement;

	// click events
	if (mouse_check_button(mb_left) && _mouseOverGuiElement) {
		knobX = _x - x;
		slider_value = ((knobX+widthHalf) / width) * (slider_maxVal-slider_minVal);	
		gui_helper_riseEvents(onChange);
	}

	if (mouse_check_button_pressed(mb_left) && _mouseOverGuiElement) {
		gui_helper_riseEvents(onClick);
	}


	if (mouse_check_button_released(mb_left) && _mouseOverGuiElement) {
		gui_helper_riseEvents(onRelease);
	}
}