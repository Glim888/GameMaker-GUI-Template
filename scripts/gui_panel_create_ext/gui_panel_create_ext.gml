/// @func gui_panel_create_ext
/// @param activePosX
/// @param activePosY
/// @param inactivePosX
/// @param inactivePosXY
/// @param speed
/// @param width
/// @param height
/// @param colorBody
/// @param colorBorderLeft
/// @param colorBorderRight
/// @param active
/// @return panel

var _panel = instance_create_layer(argument2, argument3, global.guiLayer, obj_gui_panel);

with (_panel) {
	activePos = [argument0, argument1];
	inactivePos = [argument2, argument3];
	panelSpeed = argument4;
	panelWidth = argument5;
	panelHeight = argument6+PANEL_HEAD_SIZE;
	panelCol = argument7;
	panelBorderColL = argument8;
	panelBorderColR = argument9;
	active = argument10;
	
	var _button = gui_button_create(0, 0, spr_gui_exit, 1);
	gui_addEventHandler(_button, eventHandler_t.onRelease, buttonPanelExit_onReleased);
	gui_panel_addComponent(self, panelWidth-sprite_get_width(spr_gui_exit)*0.5, -PANEL_HEAD_SIZE*0.5, _button);
	
}

return _panel;