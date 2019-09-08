/// @func gui_panel_create_ext
/// @param activePosX
/// @param activePosY
/// @param inactivePosX
/// @param inactivePosXY
/// @param speed
/// @param width
/// @param height
/// @param color
/// @param colorBorder
/// @param active
/// @return panel


var _panel = instance_create_layer(argument2, argument3, global.guiLayer, obj_gui_panel);

with (_panel) {
	activePosX = argument0;
	activePosY = argument1;
	inactivePosX = argument2;
	inactivePosY = argument3;
	panelSpeed = argument4;
	panelWidth = argument5;
	panelHeight = argument6;
	panelCol = argument7;
	panelBorderCol = argument8;
	panelActive = argument9;
}

return _panel;