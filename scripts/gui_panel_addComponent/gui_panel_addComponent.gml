/// @func gui_panel_addComponent
/// @param panel
/// @param x
/// @param y
/// @param component


with (argument0) {
	
	argument3.myPanel = self;
	argument3.panelX = argument1;
	argument3.panelY = argument2;
	ds_list_add(panelComponents, argument3);	
	
}