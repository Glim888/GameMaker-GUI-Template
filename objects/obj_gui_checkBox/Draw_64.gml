/// @desc


if (active) {
	
	draw_set_font(titleFont);
	draw_set_valign(fa_middle);
	draw_text_color(x + width*0.7, y, title, titleColor, titleColor, titleColor, titleColor, 1);
	draw_set_font(defaultFont);
	draw_rCenter();
	draw_sprite(spr_gui_checkBox, state, x, y);
	
}else{
	draw_set_alpha(global.guiInactiveAlpha);
	draw_set_font(titleFont);

	draw_set_valign(fa_middle);
	draw_text_color(x + width*0.7, y, title, titleColor, titleColor, titleColor, titleColor, 1);
	draw_set_font(defaultFont);
	draw_rCenter();

	draw_sprite(spr_gui_checkBox, state, x, y);
	draw_set_alpha(1);
}

