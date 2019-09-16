/// @func gui_checkBox_create
/// @param [gui_activePosX, gui_activePosY]
/// @param [gui_inactivePosX, gui_inactivePosY]
/// @param gui_depth
/// @param gui_slideSpeed
/// @param gui_active
/// @param cb_title
/// @param cb_titleFont
/// @param cb_titleColor
/// @param cb_state

with (instance_create_layer(argument0[0], argument0[1], GUI_LAYER, obj_gui_checkbox)) {
	
	gui_activePos = argument0;
	gui_inactivePos = argument1;
	gui_depth = argument2;
	gui_slideSpeed = argument3;
	gui_active = argument4;	
	

	cb_title = argument5;
	cb_titleFont = argument6;
	cb_titleColor = argument7;
	cb_state = argument8;

	isCreatedByScript = true;
	return self;	
}