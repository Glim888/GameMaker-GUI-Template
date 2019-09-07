/// @desc

var _x = device_mouse_x_to_gui(0);
var _y = device_mouse_y_to_gui(0);

if (mouse_check_button_released(mb_left) && point_in_rectangle(_x, _y, x-leftBorder, y-topBorder, x+rightBorder, y+botBorder)) {
	if (eventHandler != undefined) script_execute(eventHandler, self);
	}