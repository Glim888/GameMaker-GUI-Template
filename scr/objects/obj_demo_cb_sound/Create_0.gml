/// @desc

// Inherit the parent event
event_inherited();

// you can use these vars
cb_title = "Sound?";
cb_titleFont = font_16;
cb_titleColor = c_black;
cb_state = 1;

gui_addEventHandler(self, eventType_checkBox.onRelease, demo_cb_sound);