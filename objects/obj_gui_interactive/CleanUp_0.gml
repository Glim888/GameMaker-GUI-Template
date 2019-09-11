/// @desc

// Inherit the parent event
event_inherited();


// remove self from gui_controller
with (obj_gui_controller) {
	
	if (ds_exists(interactive_elements, ds_type_list)) {
		var _pos = ds_list_find_index(interactive_elements, other);
		if (_pos != -1) {
			ds_list_delete(interactive_elements, _pos);
		}
	}
	
}

ds_list_destroy(onRelease);
ds_list_destroy(onClick);
ds_list_destroy(onChange);