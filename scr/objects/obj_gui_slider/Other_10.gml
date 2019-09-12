/// @desc Click on GUI

if (gui_active) {

	var _x = device_mouse_x_to_gui(0);
	var _y = device_mouse_y_to_gui(0);

	// check if mouse is over gui element
	var _mouseOverGuiElement = position_meeting(_x, _y, self);
	global.mouseOverGuiElement = _mouseOverGuiElement;

	// click events
	if (mouse_check_button(mb_left) && _mouseOverGuiElement) {
		slider_value = (((_x-x)+sprite_width*0.5) / sprite_width) * (slider_maxVal-slider_minVal);	
		gui_helper_riseEvents(onChange);
	}

	if (mouse_check_button_pressed(mb_left) && _mouseOverGuiElement) {
		gui_helper_riseEvents(onClick);
	}


	if (mouse_check_button_released(mb_left) && _mouseOverGuiElement) {
		gui_helper_riseEvents(onRelease);
	}
	
	// update knob position
	if (lastValue != slider_value) {		
		lastValue = slider_value;	
		knobX = -sprite_width*0.5 + (slider_value / (slider_maxVal-slider_minVal)) * sprite_width;
	}
}