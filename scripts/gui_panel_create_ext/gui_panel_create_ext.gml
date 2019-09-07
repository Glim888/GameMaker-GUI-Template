/// @func gui_panel_create_ext
/// @param x
/// @param y
/// @param startX
/// @param startY
/// @param speed
/// @param width
/// @param height
/// @param color
/// @param colorBorder
/// @return panel

var _panel = instance_create_layer(argument2, argument3, global.guiLayer, obj_gui_panel)

with (_panel) {
	panelDestX = argument0;
	panelDestY = argument1;
	panelSpeed = argument4;
	panelWidth = argument5;
	panelHeight = argument6;
	panelCol = argument7;
	panelBorderCol = argument8;
}

return _panel;