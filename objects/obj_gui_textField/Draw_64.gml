/// @desc

if (active) {
	
	draw_sprite(spr_gui_textfield, 0, x, y);
	draw_set_font(titleFont);
	draw_set_halign(fa_center);
	draw_text(x, y - 1.1*string_height(title), title);
	draw_set_font(defaultFont);
	draw_set_valign(fa_middle);
	draw_text_color(x, y, text, c_black, c_black, c_black, c_black, 1);
	draw_rCenter();
	
}else{
	
	draw_set_alpha(global.guiInactiveAlpha);
	draw_sprite(spr_gui_textfield, 0, x, y);
	draw_set_font(titleFont);
	draw_set_halign(fa_center);
	draw_text(x, y - 1.1*string_height(title), title);
	draw_set_font(defaultFont);
	draw_set_valign(fa_middle);
	draw_text_color(x, y, text, c_black, c_black, c_black, c_black, 1);
	draw_rCenter();
	draw_set_alpha(1);
	
}



