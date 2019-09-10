/// @func gui_textField_create
/// @param [gui_activePosX, gui_activePosY]
/// @param [gui_inactivePosX, gui_inactivePosY]
/// @param gui_depth
/// @param gui_slideSpeed
/// @param gui_active
/// @param textfield_text
/// @param textfield_title
/// @param textfield_titleFont
/// @param textfield_titleColor



with (instance_create_layer(argument0[0], argument0[1], global.guiLayer, obj_gui_textfield)) {
	
	
	gui_activePos = argument0;
	gui_inactivePos = argument1;
	gui_depth = argument2;
	gui_slideSpeed = argument3;
	gui_active = argument4;	
	
	textfield_text = argument5;
	textfield_title = argument6;
	textfield_titleFont = argument7;
	textfield_titleColor = argument8;
	
	isCreatedByScript = true;
	return self;	
}