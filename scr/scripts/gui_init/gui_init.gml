/// @func gui_init
/// @param gui_width
/// @param gui_height
/// @param useDesigner?

// if that varialbe is true, then the mouse if over a button, slider, checkbox,textfield or panel
global.mouseOverGuiElement = false;

global.guiLayer = layer_create(0, "GUI_Layer");
display_set_gui_size(argument0, argument1);
instance_create_layer(0, 0, global.guiLayer, obj_gui_controller);
global.useDesigner = argument2;
