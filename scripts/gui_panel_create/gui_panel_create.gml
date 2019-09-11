/// @func gui_panel_create
/// @param [gui_activePosX, gui_activePosY]
/// @param [gui_inactivePosX, gui_inactivePosY]
/// @param gui_depth
/// @param gui_slideSpeed
/// @param gui_active
/// @param [panel_sizeX, panel_sizeY]
/// @param panel_color
/// @param panel_colorBorderLeft
/// @param panel_colorBorderRight
/// @param panel_title
/// @return panel

var _panel = instance_create_layer(argument1[0], argument1[1], global.guiLayer, obj_gui_panel);

with (_panel) {
	
	gui_activePos = argument0;
	gui_inactivePos =  argument1;
	gui_depth = argument2;
	gui_slideSpeed = argument3;
	gui_active = argument4;
	
	panel_size = argument5;
	panel_color = argument6;
	panel_colorBorderLeft = argument7;
	panel_colorBorderLeft = argument8;
	panel_title = argument9;
	
	isCreatedByScript = true;
	return self;
}

