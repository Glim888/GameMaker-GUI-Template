/// @desc change position of components relative to panel position

var _panX = x;
var _panY = y;
var _useDefault = panel_useDefault
for (var _i=0; _i<ds_list_size(panelComponents); _i++) {
	
	with (panelComponents[| _i]) {
		x = _panX + panelOffset[0];
		y = _panY + panelOffset[1] + (_useDefault ? PANEL_HEAD_SIZE : 0);
	}
}