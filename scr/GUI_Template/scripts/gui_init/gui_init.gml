/// @func gui_init
/// @param gui_width
/// @param gui_height
/// @param useDesigner?


// if that varialbe is true, then the mouse if over a button, slider, checkbox,textfield or panel
global.mouseOverGuiElement = false;

display_set_gui_size(argument0, argument1);
if (!instance_exists(obj_gui_controller)) instance_create_layer(0, 0, GUI_LAYER, obj_gui_controller);
global.useDesigner = argument2;
