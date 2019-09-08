/// @desc

if (active) {
	draw_sprite(sprite, 0, x, y);
}else{
	draw_set_alpha(global.guiInactiveAlpha);
	draw_sprite(sprite, 0, x, y);
	draw_set_alpha(1);
}