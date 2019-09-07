/// @desc


draw_sprite(spr_gui_slider, 0, x, y);
draw_sprite(spr_gui_knob, 0, x + knobX, y);


draw_set_font(titleFont);
draw_sCenter();
draw_text_color(x+width*0.5, y-string_height(title), title + ": " + string(value), titleColor, titleColor, titleColor, titleColor, 1);
draw_set_font(defaultFont);
draw_rCenter();