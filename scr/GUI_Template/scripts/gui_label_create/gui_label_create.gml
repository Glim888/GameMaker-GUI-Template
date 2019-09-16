/// @func gui_label_create
/// @param [gui_activePosXY]
/// @param [gui_inactivePosXY]
/// @param gui_depth
/// @param gui_slideSpeed
/// @param gui_active
/// @param label_text
/// @param label_font
/// @param label_color

with (instance_create_layer(argument0[0], argument0[1], GUI_LAYER, obj_gui_label)) {
		
	gui_activePos = argument0;
	gui_inactivePos = argument1;
	gui_depth = argument2;
	gui_slideSpeed = argument3;
	gui_active = argument4;		
	label_text = string(argument5);
	label_font = argument6;
	label_color = argument7;
	
	isCreatedByScript = true;
	
	return self;	
}
