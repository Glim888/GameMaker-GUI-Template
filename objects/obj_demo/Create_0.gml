/// @desc

gui_init(1024, 768);

var _w = 500;
var _h = 700;

var _panel = gui_panel_create([500, 0], [-_w, 0], 1, 0.1, true, [_w, _h], 0x6b6965, 0xfcba05, 0xb3860c, "Panel1");

panelError = gui_panel_create([550, 300], [-_w, 0], -1, 0.1, false, [200, 200], 0x6b6965, 0xfcba05, 0xb3860c, "Settings");
var _labelERROR = gui_label_create([0, 0], [0, 0], -2, 0.1, true, "ERROR!", font_32, c_red);
var _buttonOpenSettings = gui_button_create([0, 0], [0, 0], 0, 0.1, true, spr_button_generate);

var _button = gui_button_create([0, 0], [0, 0], 0, 0.1, true, spr_button_generate);
var _slider = gui_slider_create([0, 0], [0, 0], 0, 0.1, true, 0, 100, 25, "hans", font_32, c_red);
var _checkbox = gui_checkBox_create([0, 0], [0, 0], 0, 0.1, true, "cb", font_32, c_blue, false);
var _label = gui_label_create([0, 0], [0, 0], 0, 0.1, true, "Hellom", font_32, c_red);
var _textfield = gui_textField_create([0, 0], [0, 0], 0, 0.1, true, "hallo", "textbox", font_32, c_yellow );
var _image = gui_image_create([0, 0], [0, 0], 11, 0.1, true, spr_button_sound);

gui_addEventHandler(_buttonOpenSettings, eventType_button.onRelease, buttonSettings_onRelease);
gui_addEventHandler(_button, eventType_button.onRelease, button_onRelease);
gui_addEventHandler(_slider, eventType_button.onRelease, slider_onRelease);
gui_addEventHandler(_checkbox, eventType_button.onRelease, checkbox_onRelease);
gui_addEventHandler(_textfield, eventType_button.onRelease, textfield_onRelease);


gui_panel_addComponent(_panel, [100,25] , _label);
gui_panel_addComponent(_panel, [400,25] , _image);
gui_panel_addComponent(_panel, [_w/2,100] , _checkbox);
gui_panel_addComponent(_panel, [_w/2,200] , _textfield);
gui_panel_addComponent(_panel, [_w/2,300] , _slider);
gui_panel_addComponent(_panel, [_w/2,400] , _button);
gui_panel_addComponent(_panel, [_w/2,450] , _buttonOpenSettings);

gui_panel_addComponent(panelError, [100,100] , _labelERROR);
