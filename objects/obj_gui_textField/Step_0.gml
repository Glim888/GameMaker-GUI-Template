/// @desc

var _x = device_mouse_x_to_gui(0);
var _y = device_mouse_y_to_gui(0);


if (mouse_check_button_pressed(mb_left) && point_in_rectangle(_x, _y, x-widthHalf, y-heightHalf, x+widthHalf, y+heightHalf)) {
	if( onClick != noone) script_execute(onClick, self);
	getString = get_string_async("Input Text", "");
}


if (onRelease != noone && mouse_check_button_released(mb_left) && point_in_rectangle(_x, _y, x-widthHalf, y-heightHalf, x+widthHalf, y+heightHalf)) {
	
}