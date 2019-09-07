/// @desc

var _x = device_mouse_x_to_gui(0);
var _y = device_mouse_y_to_gui(0);

if (mouse_check_button(mb_left) && point_in_rectangle(_x, _y, x, y-heightHalf, x+width, y+heightHalf)) {
	knobX = _x - x;
	value = (knobX / width) * (maxVal-minVal);	
	}

