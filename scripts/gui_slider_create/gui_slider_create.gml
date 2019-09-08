/// @func gui_slider_create
/// @param x
/// @param y
/// @param minVal
/// @param maxVal
/// @param title
/// @param startValue
/// @param titleFont
/// @param titleColor
/// @param active

with (instance_create_layer(argument0, argument1, global.guiLayer, obj_gui_slider)) {
	
	minVal = argument2;
	maxVal = argument3;
	value = argument5;
	title = argument4;
	titleFont = argument6;
	titleColor = argument7;
	active = argument8;
		
	return self;	
}