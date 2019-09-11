/// @desc

// Inherit the parent event
event_inherited();

// you can use these vars
gui_addEventHandler(self, eventType_button.onRelease, demo_btn_closeMMPanel);

gui_panel_addComponent(obj_demo_panel_mainMenu, [211,16], self);