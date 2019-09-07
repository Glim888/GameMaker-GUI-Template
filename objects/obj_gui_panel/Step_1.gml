/// @desc

// slide out
if (slideOutFlag && 
	x-panelWidth*0.5 > display_get_gui_width() ||
	x+panelWidth*0.5 < 0||
	y-panelWidth*0.5 > display_get_gui_height() ||
	y+panelHeight*0.5 < 0) {
		instance_destroy();
		exit;
	}

// change position
x += (panelDestX - x) *panelSpeed;
y += (panelDestY - y) *panelSpeed;

// change position of components
var _comp;
var _panX = x - panelWidth*0.5;
var _panY = y - panelHeight*0.5;
for (var _i=0; _i<ds_list_size(panelComponents); _i++) {
	_comp = panelComponents[| _i];

	_comp.x = _panX + _comp.panelX;
	_comp.y = _panY + _comp.panelY;
}
