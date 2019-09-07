/// @desc

event_inherited();

title = "";
titleFont = 0;
titleColor = 0;
state = 0;

defaultFont = draw_get_font();
width = sprite_get_width(spr_gui_checkBox);

leftBorder = sprite_get_width(spr_gui_checkBox)*0.5 - sprite_get_bbox_left(spr_gui_checkBox);
rightBorder = sprite_get_bbox_right(spr_gui_checkBox) - sprite_get_width(spr_gui_checkBox)*0.5;
topBorder = sprite_get_height(spr_gui_checkBox)*0.5 - sprite_get_bbox_top(spr_gui_checkBox);
botBorder = sprite_get_bbox_bottom(spr_gui_checkBox) - sprite_get_height(spr_gui_checkBox)*0.5;