/// @desc

if (active) {

	var _x = device_mouse_x_to_gui(0);
	var _y = device_mouse_y_to_gui(0);

	// if click into textField
	if (mouse_check_button_pressed(mb_left) && point_in_rectangle(_x, _y, x-widthHalf, y-heightHalf, x+widthHalf, y+heightHalf)) {
		// rise event
		if(onClick != noone) script_execute(onClick, self);
		getString = get_string_async("Input Text", "");
	}
}