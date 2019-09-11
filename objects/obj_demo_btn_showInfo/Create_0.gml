/// @desc

// Inherit the parent event
event_inherited();

// you can use these vars
button_title = "Infos";
button_titleFont = font_16;
button_titleColor = c_black;
gui_addEventHandler(self, eventType_button.onRelease, demo_btn_showInfo);

gui_panel_addComponent(obj_demo_panel_mainMenu, [112,224], self);