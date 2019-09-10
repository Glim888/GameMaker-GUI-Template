/// @desc

gui_init(1280, 720, -1000, 0.3);

global.settingsPanel = gui_panel_create_ext(600, 50, -500, 50, 0.1, 500, 600, 0x6b6965, 0xfcba05, 0xb3860c, true, "Settings");


var _button1 = gui_button_create(50, 50, spr_button_sound, true);
gui_addEventHandler(_button1, eventType_button.onRelease, button2_evHandler);


var _button = gui_button_create(0, 0, spr_gui_exit, true);
var _slider = gui_slider_create(0, 0, 0, 100, "Slider", 25, font_32, c_white, true);
var _checkBox = gui_checkBox_create(0, 0, "Checkbox", font_32, c_white, true, true);
var _textbox = gui_textField_create(0, 0, "Hallo", "InputField", font_32, c_white, true);
var _label = gui_label_create(0, 0, "Label!", font_32, true);
var _image = gui_image_create(0, 0, spr_ats_stone32, true);

gui_addEventHandler(_button, eventType_button.onRelease, button1_evHandler);
gui_addEventHandler(_checkBox, eventType_checkBox.onRelease, checkBox1_evHandler);

gui_addEventHandler(_slider, eventType_slider.onChange, slider_evHandler);
gui_addEventHandler(_slider, eventType_slider.onClick, slider_evHandler);
gui_addEventHandler(_slider, eventType_slider.onRelease, slider_evHandler);

gui_panel_addComponent(global.settingsPanel, 250, 0, _label);
gui_panel_addComponent(global.settingsPanel, 250, 100, _button);
gui_panel_addComponent(global.settingsPanel, 250, 200, _image);
gui_panel_addComponent(global.settingsPanel, 250, 300, _slider);
gui_panel_addComponent(global.settingsPanel, 250, 400, _checkBox);
gui_panel_addComponent(global.settingsPanel, 250, 500, _textbox);


