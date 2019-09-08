/// @desc

gui_init(1280, 720, -1000, 0.3);

global.panel = gui_panel_create_ext(800, 400, -500, 0, 0.1, 500, 400, 0x6b6965, 0xfcba05, 0xb3860c, true);


var _button1 = gui_button_create(50, 50, spr_button_sound, true);
gui_addEventHandler(_button1, eventHandler_t.onRelease, button2_evHandler);


var _button = gui_button_create(0, 0, spr_gui_exit, true);
var _slider = gui_slider_create(0, 0, 0, 100, "Slider", 25, font_32, c_red, true);
var _checkBox = gui_checkBox_create(0, 0, "Checkbox", font_32, c_black, true, false);
var _textbox = gui_textField_create(0, 0, "Hallo", "InputField", font_32, c_white, true);
var _label = gui_label_create(0, 0, "Label!", font_32, true);
var _image = gui_image_create(0, 0, spr_ats_stone32, true);

gui_addEventHandler(_button, eventHandler_t.onRelease, button1_evHandler);
gui_addEventHandler(_checkBox, eventHandler_t.onRelease, checkBox1_evHandler);
gui_addEventHandler(_checkBox, eventHandler_t.onChange, checkBox1_evHandler);

gui_addEventHandler(_slider, eventHandler_t.onChange, slider_evHandler);
gui_addEventHandler(_slider, eventHandler_t.onClick, slider_evHandler);
gui_addEventHandler(_slider, eventHandler_t.onRelease, slider_evHandler);

gui_panel_addComponent(global.panel, 250, 0, _label);
gui_panel_addComponent(global.panel, 100, 100, _button);
gui_panel_addComponent(global.panel, 400, 100, _image);
gui_panel_addComponent(global.panel, 100, 200, _slider);
gui_panel_addComponent(global.panel, 100, 300, _checkBox);
gui_panel_addComponent(global.panel, 400, 300, _textbox);


