/// @func gui_panel_addComponent
/// @param panel
/// @param [positionAtPanelX, positionAtPanelY]
/// @param component

with (argument0) {
	
	argument2.gui_myPanel = self;
	argument2.panelOffset = argument1;
	ds_list_add(panelComponents, argument2);	
	
}