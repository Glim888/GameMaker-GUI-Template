/// @desc update surface


with (exitButton) instance_destroy();

exitButton= gui_button_create(0, 0, spr_gui_exit, 1);
gui_addEventHandler(exitButton, eventType_button.onRelease, buttonPanelExit_onReleased);
gui_panel_addComponent(self, panelSize[0]-sprite_get_width(spr_gui_exit)*0.5, -PANEL_HEAD_SIZE*0.5, exitButton);


if (surface_exists(panelSurf)) surface_free(panelSurf);
panelSurf = surface_create(panelSize[0], panelSize[1]);	


surface_set_target(panelSurf);

draw_clear_alpha(c_white, 0);

// Panel background and head
draw_rectangle_colour(0, 0, panelSize[0], panelSize[1], panelBorderColL, panelBorderColR, panelBorderColR, panelBorderColL, false);
draw_roundrect_color(PANEL_BORDER_SIZE, sprite_get_height(spr_gui_exit)+2*PANEL_BORDER_SIZE, panelSize[0]-(PANEL_BORDER_SIZE+1), panelSize[1]-(PANEL_BORDER_SIZE+1), panelCol, panelCol, false);


draw_set_font(PANEL_TITLE_FONT);
draw_text_color(PANEL_BORDER_SIZE, PANEL_BORDER_SIZE, panelTitle, PANEL_TITLE_COL, PANEL_TITLE_COL, PANEL_TITLE_COL, PANEL_TITLE_COL, 1);
draw_set_font(font_16);


surface_reset_target();
