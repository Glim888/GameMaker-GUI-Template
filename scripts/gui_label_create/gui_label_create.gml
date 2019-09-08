/// @func gui_label_create
/// @param x
/// @param y
/// @param text
/// @param font
/// @param active

with (instance_create_layer(argument0, argument1, global.guiLayer, obj_gui_label)) {
	
	text = string(argument2);
	font = argument3;
	active = argument4;
	
	return self;	
}
