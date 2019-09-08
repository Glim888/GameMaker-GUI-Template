/// @desc


if (panelActive) {
	panelDestPos[0] = activePos[0];
	panelDestPos[1] = activePos[1];
}else{
	panelDestPos[0] = inactivePos[0];
	panelDestPos[1] = inactivePos[1];
}

// outside room -> destroy self
if (slideOutFlag && 
	x-panelWidth*0.5 > display_get_gui_width() ||
	x+panelWidth*0.5 < 0||
	y-panelWidth*0.5 > display_get_gui_height() ||
	y+panelHeight*0.5 < 0) {
		instance_destroy();
		exit;
	}

// change position
x += (panelDestPos[0] - x) *panelSpeed;
y += (panelDestPos[1] - y) *panelSpeed;

// change position of components
var _comp;
var _panX = x - panelWidth*0.5;
var _panY = y - panelHeight*0.5;
for (var _i=0; _i<ds_list_size(panelComponents); _i++) {
	_comp = panelComponents[| _i];

	_comp.x = _panX + _comp.panelOffset[0];
	_comp.y = _panY + _comp.panelOffset[1];
}
