/// @func gui_image_create
/// @param x
/// @param y
/// @param sprite
/// @param active


with (instance_create_layer(argument0, argument1, global.guiLayer, obj_gui_image)) {
	
	sprite = argument2;
	active = argument3;
	
	return self;	
}
