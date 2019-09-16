/// @desc update surface


//create exit button relative to top right corner

if (panel_useDefault && panel_useExitButton) {
	with (exitButton) instance_destroy();
	exitButton = gui_button_create([50,0], [0,0], gui_depth-1, 0.1, true, SPRITE_PANEL_CLOSE, "", draw_get_font(), c_white);

	gui_addEventHandler(exitButton, eventType_button.onRelease, gui_helper_closePanel);
	gui_panel_addComponent(self, [panel_size[0]-sprite_get_width(SPRITE_PANEL_CLOSE)*0.5, -PANEL_HEAD_SIZE + sprite_get_height(SPRITE_PANEL_CLOSE)*0.5], exitButton);
}

// recreate surface
if (surface_exists(panelSurf)) surface_free(panelSurf);

panelSurf = surface_create(panel_size[0], panel_size[1] + (panel_useDefault ? PANEL_HEAD_SIZE : 0));	


surface_set_target(panelSurf);

draw_clear_alpha(c_white, 0);

// default Panel background and head
if (panel_useDefault) {
	var _font = draw_get_font();
	draw_rectangle_colour(0, 0, panel_size[0], panel_size[1]+PANEL_HEAD_SIZE, panel_colorBorderLeft, panel_colorBorderRight, panel_colorBorderRight, panel_colorBorderLeft, false);
	draw_roundrect_color(PANEL_BORDER_SIZE, sprite_get_height(SPRITE_PANEL_CLOSE)+2*PANEL_BORDER_SIZE, panel_size[0]-(PANEL_BORDER_SIZE+1), panel_size[1]+PANEL_HEAD_SIZE-(PANEL_BORDER_SIZE+1), panel_color, panel_color, false);
	draw_set_font(PANEL_TITLE_FONT);
	gui_helper_rCenter();
	draw_text_color(PANEL_BORDER_SIZE, PANEL_BORDER_SIZE, panel_title, PANEL_TITLE_COL, PANEL_TITLE_COL, PANEL_TITLE_COL, PANEL_TITLE_COL, 1);
	draw_set_font(_font);
}else{
	var _x = x;
	var _y = y;
	x = 0; 
	y = 0;
	draw_self();
	x = _x;
	y = _y;
}

surface_reset_target();
