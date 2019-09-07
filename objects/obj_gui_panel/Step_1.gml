/// @desc


if (slideOutFlag && 
	x-panelWidth*0.5 > display_get_gui_width() ||
	x+panelWidth*0.5 < 0||
	y-panelWidth*0.5 > display_get_gui_height() ||
	y+panelHeight*0.5 < 0) {
		instance_destroy();
		exit;
	}

x += (panelDestX - x) *panelSpeed;
y += (panelDestY - y) *panelSpeed;

var _button;
var _x = device_mouse_x_to_gui(0);
var _y = device_mouse_y_to_gui(0);
var _panX = x - panelWidth*0.5;
var _panY = y - panelHeight*0.5;


for (var _i=0; _i<ds_list_size(panelButton); _i++) {
	_button = panelButton[| _i];

	if (mouse_check_button(mb_left) && point_in_rectangle(_x, _y, _panX + _button.x-_button.leftBorder, _panY + _button.y-_button.topBorder, _panX + _button.x+_button.rightBorder, _panY + _button.y+_button.botBorder)) {
		script_execute(_button.eventHandler, self);			
	}
}
