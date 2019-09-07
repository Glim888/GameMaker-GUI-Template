/// @desc

var _x = device_mouse_x_to_gui(0);
var _y = device_mouse_y_to_gui(0);

if (mouse_check_button_released(mb_left) && point_in_rectangle(_x, _y, x-leftBorder, y-topBorder, x+rightBorder, y+botBorder)) {
	if (eventHandler != undefined) {
		if (variable_instance_exists(self, "myPanel")) {
			script_execute(eventHandler, self, myPanel);
		}else{		
			script_execute(eventHandler, self);
		}
	}
}
