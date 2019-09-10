/// @func gui_panel_create_ext
/// @param activePosX
/// @param activePosY
/// @param inactivePosX
/// @param inactivePosY
/// @param speed
/// @param width
/// @param height
/// @param colorBody
/// @param colorBorderLeft
/// @param colorBorderRight
/// @param active
/// @param title
/// @return panel

var _panel = instance_create_layer(argument2, argument3, global.guiLayer, obj_gui_panel);

with (_panel) {
	activePos = [argument0, argument1];
	inactivePos = [argument2, argument3];
	panelSpeed = argument4;
	panelSize[0] = argument5;
	panelSize[1] = argument6+PANEL_HEAD_SIZE;
	panelCol = argument7;
	panelBorderColL = argument8;
	panelBorderColR = argument9;
	active = argument10;
	panelTitle = argument11;
	event_user(1);
}

return _panel;