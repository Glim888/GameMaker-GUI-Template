/// @desc

// Inherit the parent event
event_inherited();

// you can use these vars
// sprite_index
button_title = "Open";
button_titleFont = font_32;
button_titleColor = c_black;

gui_addEventHandler(self, eventType_button.onRelease, button1_onRelease);