/// @func gui_checkBox_create
/// @param x
/// @param y
/// @param title
/// @param textFont
/// @param textColor
/// @param startState


with (instance_create_layer(argument0, argument1, global.guiLayer, obj_gui_checkBox)) {
	
	title = argument2;
	titleFont = argument3;
	titleColor = argument4;
	state = argument5;
		
	return self;	
}