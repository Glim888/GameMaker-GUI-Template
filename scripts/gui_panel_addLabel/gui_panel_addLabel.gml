/// @func gui_panel_addLabel
/// @param panel
/// @param x
/// @param y
/// @param text
/// @param font
/// @param color


with (argument0) {

	var _label = instance_create_layer(argument1, argument2, global.guiLayer, obj_gui_panel_component);
	_label.myPanel = self;
	_label.text = argument3;
	_label.font = argument4;
	_label.col = argument5;
	ds_list_add(panelLabel, _label);
	event_user(0);
}