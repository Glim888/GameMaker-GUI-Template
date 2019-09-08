/// @func gui_textField_create
/// @param x
/// @param y
/// @param text
/// @param title
/// @param titleFont
/// @param titleColor
/// @param active


with (instance_create_layer(argument0, argument1, global.guiLayer, obj_gui_textField)) {
	
	text = argument2;
	title = argument3;
	titleFont = argument4;
	titleColor = argument5;
	active = argument6;
	
	return self;	
}