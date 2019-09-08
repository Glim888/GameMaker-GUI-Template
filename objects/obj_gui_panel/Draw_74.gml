/// @desc draw

if (surface_exists(panelSurf)) {
	draw_surface(panelSurf, x, y);
}else{
	event_user(0);	
}