/// @desc update surface


if (!surface_exists(panelSurf)) {
	panelSurf = surface_create(panelWidth, panelHeight);	
}

surface_set_target(panelSurf);

draw_clear_alpha(c_white, 0);
draw_roundrect_color(5, 5, panelWidth-5, panelHeight-5, panelBorderCol, panelBorderCol, false);
draw_roundrect_color(10, 10, panelWidth-10, panelHeight-10, panelCol, panelCol, false);

var _label;
var _defaultFont = draw_get_font();
for (var _i=0; _i<ds_list_size(panelLabel); _i++) {
	_label = panelLabel[| _i];
	draw_set_font(_label.font);
	draw_text_color(_label.x, _label.y, _label.text, _label.col, _label.col, _label.col, _label.col, 1);
}
draw_set_font(_defaultFont);

var _button;
for (var _i=0; _i<ds_list_size(panelButton); _i++) {
	_button = panelButton[| _i];
	draw_sprite(_button.sprite, 0, _button.x, _button.y);
}

var _image;
for (var _i=0; _i<ds_list_size(panelImage); _i++) {
	_image = panelImage[| _i];
	draw_sprite(_image.sprite, 0, _image.x, _image.y);
}


surface_reset_target();
