/// @desc



var _defaultW = 400; 
var _defaultH = 500;
var _defaultCL = 0xfcba05;
var _defaultCR = 0xb3860c;
var _defaultCB = 0x6b6965;
var _defaultTitle = "Panel1";

gui_init(1280, 720, -1000, 0.3);

var _panel = gui_panel_create_ext(0, 0, -300, 0, 0.1, 300, 720, 0x6b6965, 0xfcba05, 0xb3860c, true, "Settings");

var _textBox_w = gui_textField_create(0, 0, string(_defaultW), "Panel width", font_32, c_white, true);
var _textBox_h = gui_textField_create(0, 0, string(_defaultH), "Panel height", font_32, c_white, true);
var _title = gui_textField_create(0, 0, _defaultTitle, "Title", font_32, c_white, true);
var _button = gui_button_create(0, 0, spr_button_generate, true);

gui_addEventHandler(_textBox_w, eventType_textField.onRelease, panelWidth_onRelease);
gui_addEventHandler(_textBox_h, eventType_textField.onRelease, panelHeight_onRelease);
gui_addEventHandler(_title, eventType_textField.onRelease, panelTitle_onRelease);
gui_addEventHandler(_button, eventType_button.onRelease, generateCode_onRelease);

gui_panel_addComponent(_panel, 150, 100, _textBox_w);
gui_panel_addComponent(_panel, 150, 200, _textBox_h);
gui_panel_addComponent(_panel, 150, 300, _title);
gui_panel_addComponent(_panel, 150, 650, _button);

designedPanel = gui_panel_create_ext(350, 0, 350, 0, 0.1, _defaultW, _defaultH, _defaultCB, _defaultCL, _defaultCR, true, _defaultTitle);