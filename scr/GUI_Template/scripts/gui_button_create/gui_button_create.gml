/// @func gui_button_create
/// @param [gui_activePosX,gui_activePosY]
/// @param [gui_inactivePosX,gui_inactivePosY]
/// @param gui_depth
/// @param gui_slideSpeed
/// @param gui_active
/// @param sprite_index
/// @param button_title
/// @param button_titleFont
/// @param button_titleColor


with (instance_create_layer(argument0[0], argument0[1], GUI_LAYER, obj_gui_button)) {
	
	gui_activePos = argument0;
	gui_inactivePos = argument1;
	gui_depth = argument2;
	gui_slideSpeed = argument3;
	gui_active = argument4;	
	sprite_index = argument5;
	
	button_title = argument6;
	button_titleFont = argument7;
	button_titleColor = argument8;
	isCreatedByScript = true;

	return self;	
}
