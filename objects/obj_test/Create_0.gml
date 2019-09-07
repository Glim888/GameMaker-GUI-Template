/// @desc

gui_init(1280, 720, -1000);

_panel = gui_panel_create_ext(800, 400, 0, 0, 0.1, 800, 700, c_gray, c_white);

gui_panel_addComponent(_panel, 30, 100, gui_image_create(0, 0, spr_ats_stone32));
gui_panel_addComponent(_panel, 30, 200, gui_button_create(0, 0, spr_button_exit, button1_evHandler));
gui_panel_addComponent(_panel, 30, 300, gui_label_create(0, 0, "Label!", font_32));
gui_panel_addComponent(_panel, 30, 400, gui_checkBox_create(0, 0, "Checkbox", font_32, c_black, true));
gui_panel_addComponent(_panel, 30, 500, gui_slider_create(0, 0, 0, 100, "Slider", 25, font_32, c_red));
