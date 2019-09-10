/// @desc


// remove self from panel, if there is a panel that element is connected to
with (myPanel) {
	
	if (ds_exists(myPanel, ds_type_list)) {
		var _pos = ds_list_find_index(panelComponents, other);
		if (_pos != -1) ds_list_delete(panelComponents, _pos);
	}
	
}

ds_list_destroy(onRelease);
ds_list_destroy(onClick);
ds_list_destroy(onChange);