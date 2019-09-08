/// @desc

if (active) {
	draw_sprite(sprite, 0, x, y);
}else{
	draw_set_alpha(GUI_INACTIVE_ALPHA);
	draw_sprite(sprite, 0, x, y);
	draw_set_alpha(1);
}