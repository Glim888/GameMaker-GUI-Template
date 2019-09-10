/// @desc

gui_helper_sCenter();
draw_set_font(font);

if (active) {
			
	draw_text(x, y, text);
	
}else{
	
	draw_set_alpha(global.guiInactiveAlpha);
	draw_text(x, y, text);
	draw_set_alpha(1);
	
}

draw_set_font(defaultFont);
gui_helper_rCenter();

