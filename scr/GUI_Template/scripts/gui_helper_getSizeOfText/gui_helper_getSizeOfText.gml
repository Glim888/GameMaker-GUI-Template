/// @func gui_helper_getSizeOfText
/// @param text[]
/// @param font[]

var defaultFont = draw_get_font();

var _size  = [0, 0];
for (var _i=0; _i<array_length_1d(argument0); _i++) {
	draw_set_font(argument1[_i]);
	_size[0] = max (string_width(argument0[_i]), _size[0]);
	_size[1] = max (string_height(argument0[_i]), _size[1]);
}

draw_set_font(defaultFont)

return _size