/// @desc

if (active) {
	draw_set_font(font);
	draw_text(x, y, text);
	draw_set_font(defaultFont);
}else{
	draw_set_alpha(GUI_INACTIVE_ALPHA);
	draw_set_font(font);
	draw_text(x, y, text);
	draw_set_font(defaultFont);
	draw_set_alpha(1);
}


