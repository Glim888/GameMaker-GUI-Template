/// @desc

if (active) {

	var _x = device_mouse_x_to_gui(0);
	var _y = device_mouse_y_to_gui(0);

	if (mouse_check_button(mb_left) && point_in_rectangle(_x, _y, x-widthHalf, y-heightHalf, x+widthHalf, y+heightHalf)) {
		knobX = _x - x;
		value = ((knobX+widthHalf) / width) * (maxVal-minVal);	
		if (onChange != noone) script_execute(onChange, self);
	}

	if (onClick != noone && mouse_check_button_pressed(mb_left) && point_in_rectangle(_x, _y, x-widthHalf, y-heightHalf, x+widthHalf, y+heightHalf)) {
		script_execute(onClick, self);
	}


	if (onRelease != noone && mouse_check_button_released(mb_left) && point_in_rectangle(_x, _y, x-widthHalf, y-heightHalf, x+widthHalf, y+heightHalf)) {
		script_execute(onRelease, self);
	}
}