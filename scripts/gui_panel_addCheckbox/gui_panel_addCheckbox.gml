/// @func gui_panel_addButton
/// @param panel
/// @param x
/// @param y
/// @param sprite

with (argument0) {

	var _image = instance_create_layer(argument1, argument2, global.guiLayer, obj_gui_panel_component);
	_image.myPanel = self;
	_image.sprite = argument3;
	ds_list_add(panelImage, _image);
	event_user(0);
	
}