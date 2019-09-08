/// @desc update surface


if (!surface_exists(panelSurf)) {
	panelSurf = surface_create(panelWidth, panelHeight);	
}

surface_set_target(panelSurf);

draw_clear_alpha(c_white, 0);

// Panel background and head
draw_rectangle_colour(0, 0, panelWidth, panelHeight, panelBorderColL, panelBorderColR, panelBorderColR, panelBorderColL, false);
draw_roundrect_color(PANEL_BORDER_SIZE, sprite_get_height(spr_gui_exit)+2*PANEL_BORDER_SIZE, panelWidth-(PANEL_BORDER_SIZE+1), panelHeight-(PANEL_BORDER_SIZE+1), panelCol, panelCol, false);


draw_set_font(font_32);
draw_text_color(PANEL_BORDER_SIZE, PANEL_BORDER_SIZE, panelTitle, PANEL_TITLE_COL, PANEL_TITLE_COL, PANEL_TITLE_COL, PANEL_TITLE_COL, 1);
draw_set_font(font_16);


surface_reset_target();
