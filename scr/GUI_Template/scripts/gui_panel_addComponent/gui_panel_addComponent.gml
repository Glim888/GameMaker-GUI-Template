/// @func gui_panel_addComponent
/// @param panel
/// @param [positionAtPanelXY]
/// @param component

with (argument2) {
	
	gui_activePos = [0, 0];
	gui_inactivePos = [0, 0];
	gui_depth = argument0.gui_depth -1;
	gui_myPanel = argument0;
	panelOffset = argument1;
	ds_list_add(argument0.panelComponents, self);	
	
}