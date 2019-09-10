/// @func gui_button_create
/// @param [gui_activePosX,gui_activePosY]
/// @param [gui_inactivePosX,gui_inactivePosY]
/// @param gui_depth
/// @param gui_slideSpeed
/// @param gui_active
/// @param sprite_index


with (instance_create_layer(argument0[0], argument0[1], global.guiLayer, obj_gui_button)) {
	
	gui_activePos = argument0;
	gui_inactivePos = argument1;
	gui_depth = argument2;
	gui_slideSpeed = argument3;
	gui_active = argument4;	
	sprite_index = argument5;
	
	leftBorder = sprite_get_width(sprite_index)*0.5 - sprite_get_bbox_left(sprite_index);
	rightBorder = sprite_get_bbox_right(sprite_index) - sprite_get_width(sprite_index)*0.5;
	topBorder = sprite_get_height(sprite_index)*0.5 - sprite_get_bbox_top(sprite_index);
	botBorder = sprite_get_bbox_bottom(sprite_index) - sprite_get_height(sprite_index)*0.5;
	isCreatedByScript = true;

	return self;	
}
