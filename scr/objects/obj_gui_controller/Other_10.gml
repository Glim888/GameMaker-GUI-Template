/// @desc add gui element


if (is_undefined(__ELEMENT__) || !instance_exists(__ELEMENT__)) exit;

if (object_is_ancestor(__ELEMENT__.object_index, obj_gui_interactive)) {
	
	var _size= ds_list_size(interactive_elements);
	var _b = true;
	for (var _i=0; _i<_size; _i++) {
		if (__ELEMENT__.gui_depth < interactive_elements[|_i].gui_depth ) {
			ds_list_insert(interactive_elements, _i, __ELEMENT__);
			_b = false;
			break;
		}
	}
	if (_b) ds_list_add(interactive_elements, __ELEMENT__);	
}

var _size= ds_list_size(gui_elements);

for (var _i=0; _i<_size; _i++) {
	if (__ELEMENT__.gui_depth < gui_elements[|_i].gui_depth ) {
		ds_list_insert(gui_elements, _i, __ELEMENT__);
		exit;
	}
}

ds_list_add(gui_elements, __ELEMENT__);
