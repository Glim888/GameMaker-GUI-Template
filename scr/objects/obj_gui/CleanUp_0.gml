/// @desc


// remove self from panel, if there is a panel that element is connected to
if (gui_myPanel != noone) {
	with (gui_myPanel) {
	
		if (ds_exists(gui_myPanel, ds_type_list)) {
			var _pos = ds_list_find_index(panelComponents, other);
			if (_pos != -1) {
				ds_list_delete(panelComponents, _pos);
			}
		}
	
	}
}
// remove self from gui_controller
with (obj_gui_controller) {
	
	if (ds_exists(gui_elements, ds_type_list)) {
		var _pos = ds_list_find_index(gui_elements, other);
		if (_pos != -1) {
			ds_list_delete(gui_elements, _pos);
		}
	}
	
}

