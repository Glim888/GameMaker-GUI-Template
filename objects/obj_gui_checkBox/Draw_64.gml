/// @desc

draw_set_font(titleFont);
draw_sCenter();
draw_text_color(x + 1.5*width, y, title, titleColor, titleColor, titleColor, titleColor, 1);
draw_set_font(defaultFont);
draw_rCenter();

draw_sprite(spr_gui_checkBox, state, x, y);