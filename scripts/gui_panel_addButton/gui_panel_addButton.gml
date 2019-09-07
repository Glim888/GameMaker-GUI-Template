/// @func gui_panel_addButton
/// @param panel
/// @param x
/// @param y
/// @param sprite
/// @param eventHandler

with (argument0) {

	var _button = instance_create_layer(argument1, argument2, global.guiLayer, obj_gui_panel_component);
	_button.myPanel = self;
	_button.sprite = argument3;
	_button.eventHandler = argument4;
	_button.leftBorder = sprite_get_width(argument3)*0.5 - sprite_get_bbox_left(argument3);
	_button.rightBorder = sprite_get_bbox_right(argument3) - sprite_get_width(argument3)*0.5;
	_button.topBorder = sprite_get_height(argument3)*0.5 - sprite_get_bbox_top(argument3);
	_button.botBorder = sprite_get_bbox_bottom(argument3) - sprite_get_height(argument3)*0.5;
	ds_list_add(panelButton, _button);
	event_user(0);
}