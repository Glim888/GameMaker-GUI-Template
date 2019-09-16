/// @desc

event_inherited();

// you can use these vars
panel_title = "Panel";
panel_color = 0;
panel_colorBorderLeft = 0;
panel_colorBorderRight = 0;
panel_size = [sprite_width, sprite_height];
panel_useDefault = true;
panel_isMoveable = true;
panel_useExitButton = true; // only for default panel


// do not use
panelSurf = noone;
exitButton = noone;
componentsDeactivated = false;
panelComponents = ds_list_create();
movePanelOffset = [0, 0];
movePanelFlag = false;
killTimer = -1;