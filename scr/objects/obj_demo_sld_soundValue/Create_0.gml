/// @desc

// Inherit the parent event
event_inherited();

slider_minVal = 0;
slider_maxVal = 100;
slider_value = 50;
slider_title = "Sound Level";
slider_titleFont = font_16;
slider_titleColor = c_black;

gui_addEventHandler(self, eventType_slider.onChange, demo_sld_soundValue);
