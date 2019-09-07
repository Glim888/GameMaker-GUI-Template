/// @desc update surface


if (!surface_exists(panelSurf)) {
	panelSurf = surface_create(panelWidth, panelHeight);	
}

surface_set_target(panelSurf);

draw_clear_alpha(c_white, 0);
draw_roundrect_color(5, 5, panelWidth-5, panelHeight-5, panelBorderCol, panelBorderCol, false);
draw_roundrect_color(10, 10, panelWidth-10, panelHeight-10, panelCol, panelCol, false);

surface_reset_target();
