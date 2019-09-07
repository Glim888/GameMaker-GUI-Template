/// @desc

gui_init(1280, 720, -1000);

var _panel = gui_panel_create_ext(800, 400, 0, 0, 0.1, 800, 700, c_gray, c_white);

var _button = gui_button_create(0, 0, spr_button_exit);
var _slider = gui_slider_create(0, 0, 0, 100, "Slider", 25, font_32, c_red);
var _checkBox = gui_checkBox_create(0, 0, "Checkbox", font_32, c_black, true);

gui_addEventHandler(_button, eventHandler_t.onRelease, button1_evHandler);
gui_addEventHandler(_checkBox, eventHandler_t.onRelease, checkBox1_evHandler);
gui_addEventHandler(_checkBox, eventHandler_t.onChange, checkBox1_evHandler);

gui_addEventHandler(_slider, eventHandler_t.onChange, slider_evHandler);
gui_addEventHandler(_slider, eventHandler_t.onClick, slider_evHandler);
gui_addEventHandler(_slider, eventHandler_t.onRelease, slider_evHandler);

gui_panel_addComponent(_panel, 30, 100, gui_image_create(0, 0, spr_ats_stone32));
gui_panel_addComponent(_panel, 30, 200, _button);
gui_panel_addComponent(_panel, 30, 300, gui_label_create(0, 0, "Label!", font_32));
gui_panel_addComponent(_panel, 30, 400, _slider);
gui_panel_addComponent(_panel, 30, 500, _checkBox);
