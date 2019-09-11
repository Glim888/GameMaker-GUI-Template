/// @desc change position of components relative to panel position

var _panX = x;
var _panY = y ;
for (var _i=0; _i<ds_list_size(panelComponents); _i++) {
	
	with (panelComponents[| _i]) {
		x = _panX + panelOffset[0];
		y = _panY + panelOffset[1] + PANEL_HEAD_SIZE;
	}
}