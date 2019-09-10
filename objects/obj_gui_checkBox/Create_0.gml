/// @desc

event_inherited();

// you can use these vars
cb_title = "";
cb_titleFont = 0;
cb_titleColor = 0;
cb_state = 0;

// do not use these vars
defaultFont = draw_get_font();
width = sprite_get_width(SPRITE_CHECKBOX);
leftBorder = sprite_get_width(SPRITE_CHECKBOX)*0.5 - sprite_get_bbox_left(SPRITE_CHECKBOX);
rightBorder = sprite_get_bbox_right(SPRITE_CHECKBOX) - sprite_get_width(SPRITE_CHECKBOX)*0.5;
topBorder = sprite_get_height(SPRITE_CHECKBOX)*0.5 - sprite_get_bbox_top(SPRITE_CHECKBOX);
botBorder = sprite_get_bbox_bottom(SPRITE_CHECKBOX) - sprite_get_height(SPRITE_CHECKBOX)*0.5;