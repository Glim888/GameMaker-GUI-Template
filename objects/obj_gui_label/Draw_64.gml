/// @desc

if (active) {
		
	draw_set_font(font);
	draw_text(x, y, text);
	draw_set_font(defaultFont);	
	
}else{
	
	draw_set_alpha(global.guiInactiveAlpha);
	draw_set_font(font);
	draw_text(x, y, text);
	draw_set_font(defaultFont);
	draw_set_alpha(1);
	
}


