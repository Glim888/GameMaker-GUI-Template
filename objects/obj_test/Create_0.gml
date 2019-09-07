/// @desc

gui_init(1280, 720, -1000);

_panel = gui_panel_create_ext(800, 400, 0, 0, 0.1, 500, 400, 1, c_gray, c_white);
gui_panel_addLabel(_panel, 10, 10, "Hello World", font_32, c_red);
gui_panel_addButton(_panel, 100, 50, spr_button_exit, button1_evHandler);
gui_panel_addImage(_panel, 400, 300, spr_button_exit)

gui_image_create(20, 20, spr_ats_stone32);
gui_button_create(500, 50, spr_button_exit, undefined);
gui_label_create(400, 200, "Hello World ihr MOFUS", font_32);