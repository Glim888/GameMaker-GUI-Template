/// @desc

// Inherit the parent event
event_inherited();

// you can use these vars
// sprite_index

// do not use these vars
leftBorder = sprite_get_width(sprite_index)*0.5 - sprite_get_bbox_left(sprite_index);
rightBorder = sprite_get_bbox_right(sprite_index) - sprite_get_width(sprite_index)*0.5;
topBorder = sprite_get_height(sprite_index)*0.5 - sprite_get_bbox_top(sprite_index);
botBorder = sprite_get_bbox_bottom(sprite_index) - sprite_get_height(sprite_index)*0.5;