/// @desc

// Inherit the parent event
event_inherited();

// you can use these vars
gui_active = false;
gui_activePos = [display_get_gui_width()*0.5 - sprite_width*0.5, display_get_gui_height()*0.5 - sprite_height*0.5];
gui_inactivePos = [-sprite_width, 0];
gui_depth = 0;
panel_title = "Panel";
panel_color = 0x6b6965;
panel_colorBorderLeft = 0xfcba05;
panel_colorBorderLeft = 0xb3860c;
panel_size = [sprite_width, sprite_height];
panel_useDefault = false;
panel_isMoveable = true;
