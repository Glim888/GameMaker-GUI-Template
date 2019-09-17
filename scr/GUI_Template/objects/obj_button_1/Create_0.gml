/// @desc

// Inherit the parent event
event_inherited();

button_title = "Open";
button_titleFont = PANEL_TITLE_FONT;
button_titleColor = c_black;

gui_addEventHandler(self, eventType_button.onRelease, button1_onRelease);