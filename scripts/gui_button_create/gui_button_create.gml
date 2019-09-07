/// @func gui_button_create
/// @param x
/// @param y
/// @param sprite
/// @param eventHandler


with (instance_create_layer(argument0, argument1, global.guiLayer, obj_gui_button)) {
	
	sprite = argument2;
	eventHandler = argument3;
	leftBorder = sprite_get_width(argument2)*0.5 - sprite_get_bbox_left(argument2);
	rightBorder = sprite_get_bbox_right(argument2) - sprite_get_width(argument2)*0.5;
	topBorder = sprite_get_height(argument2)*0.5 - sprite_get_bbox_top(argument2);
	botBorder = sprite_get_bbox_bottom(argument2) - sprite_get_height(argument2)*0.5;
	return self;	
}

