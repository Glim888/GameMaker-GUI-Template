/// @desc

draw_sCenter();
if (active) {
	
	draw_set_font(titleFont);	
	draw_sprite(spr_gui_checkBox, state, x, y);	
	draw_set_halign(fa_left);
	draw_text_color(x + width, y, title, titleColor, titleColor, titleColor, titleColor, 1);
	draw_set_font(defaultFont);
	
	
}else{
	
	draw_set_alpha(global.guiInactiveAlpha);
	
	draw_set_font(titleFont);	
	draw_sprite(spr_gui_checkBox, state, x, y);	
	draw_set_halign(fa_left);
	draw_text_color(x + width, y, title, titleColor, titleColor, titleColor, titleColor, 1);
	draw_set_font(defaultFont);
	
	draw_set_alpha(1);
	
}
draw_rCenter();
