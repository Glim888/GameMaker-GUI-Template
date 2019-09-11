/// @desc

// Inherit the parent event
event_inherited();

// you can use these vars
cb_title = "Fullscreen?";
cb_titleFont = font_16;
cb_titleColor = c_black;
cb_state = 0;

gui_panel_addComponent(obj_demo_panel_settings, [80,320], self);
gui_addEventHandler(self, eventType_checkBox.onRelease, demo_cb_fullScreen);