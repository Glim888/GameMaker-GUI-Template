/// @func gui_init
/// @param gui_width
/// @param gui_height
/// @param layerdepth
/// @param guiInactiveAlpha 

global.guiLayer = layer_create(argument2, "GUI_Layer");
global.guiInactiveAlpha = argument3;
display_set_gui_size(argument0, argument1);
