/// @desc draw

if (surface_exists(panelSurf)) {
	draw_set_alpha(panelAlpha);
	draw_surface(panelSurf, x - panelWidth*0.5, y - panelHeight *0.5);
	draw_set_alpha(1);
}else{
	event_user(0);	
}