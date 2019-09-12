/// @func gui_image_create
/// @param [gui_activePosX, gui_activePosY]
/// @param [gui_inactivePosX, gui_inactivePosY]
/// @param gui_depth
/// @param gui_slideSpeed
/// @param gui_active
/// @param sprite_index



with (instance_create_layer(argument0[0], argument0[1], global.guiLayer, obj_gui_image)) {
	
	gui_activePos = argument0;
	gui_inactivePos = argument1;
	gui_depth = argument2;
	gui_slideSpeed = argument3;
	gui_active = argument4;
	sprite_index = argument5;
	
	isCreatedByScript = true;
	return self;	
}

