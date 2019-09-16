/// @func gui_slider_create
/// @param [gui_activePosX, gui_activePosY]
/// @param [gui_inactivePosX, gui_inactivePosY]
/// @param gui_depth
/// @param gui_slideSpeed
/// @param gui_active
/// @param slider_minVal
/// @param slider_maxVal
/// @param slider_value
/// @param slider_title
/// @param slider_titleFont
/// @param slider_titleColor


with (instance_create_layer(argument0[0], argument0[1], GUI_LAYER, obj_gui_slider)) {
	
	gui_activePos = argument0;
	gui_inactivePos = argument1;
	gui_depth = argument2;
	gui_slideSpeed = argument3;
	gui_active = argument4;		
	
	
	slider_minVal = argument5;
	slider_maxVal = argument6;
	slider_value = argument7;
	slider_title = argument8;
	slider_titleFont = argument9;
	slider_titleColor = argument10;
	
	isCreatedByScript = true;		
	return self;	
}