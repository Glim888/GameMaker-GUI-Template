/// @desc


var _x = device_mouse_x_to_gui(0);
var _y = device_mouse_y_to_gui(0);

with (obj_gui_panel) {
	if (global.mouseOverGuiElement) exit;
	global.mouseOverGuiElement |= point_in_rectangle(_x, _y, x, y, x+panelWidth, y+panelHeight);
}

with (obj_gui_button) {
	if (global.mouseOverGuiElement) exit;
	global.mouseOverGuiElement |= point_in_rectangle(_x, _y, x-leftBorder, y-topBorder, x+rightBorder, y+botBorder);
}
with (obj_gui_slider) {
	if (global.mouseOverGuiElement) exit;
	global.mouseOverGuiElement |= point_in_rectangle(_x, _y, x, y-heightHalf, x+width, y+heightHalf);
}

with (obj_gui_checkBox) {
	if (global.mouseOverGuiElement) exit;
	global.mouseOverGuiElement |= point_in_rectangle(_x, _y, x-leftBorder, y-topBorder, x+rightBorder, y+botBorder);
}

with (obj_gui_textField) {
	if (global.mouseOverGuiElement) exit;
	global.mouseOverGuiElement |= point_in_rectangle(_x, _y, x-widthHalf, y-heightHalf, x+widthHalf, y+heightHalf);
}


