/// @desc

// Inherit the parent event
event_inherited();

// you can use these vars
button_title = "Settings";
button_titleFont = font_16;
button_titleColor = c_black;
gui_addEventHandler(self, eventType_button.onRelease, demo_btn_openSettings);
