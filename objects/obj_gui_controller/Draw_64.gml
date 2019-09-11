/// @desc

var _defaultFont = draw_get_font();
var _size= ds_list_size(gui_elements);
var _parent;
for (var _i=_size-1; _i>=0; _i--) {
	
	with (gui_elements[| _i]) {
		
		_parent = isCreatedByScript ? object_index : object_get_parent(object_index);
		
		switch (_parent) {
		
			case obj_gui_panel:
	
				if (surface_exists(panelSurf)) {
					draw_surface(panelSurf, x, y);
				}else{
					event_user(1);	
				}
	
			break;
	
			case obj_gui_image:
	
				if (gui_active) {
					draw_self();
				}else{
					draw_set_alpha(INACTIVE_ALPHA);
					draw_self();
					draw_set_alpha(1);
				}
	
			break;
	
			case obj_gui_button:
				
				if (gui_active) {
					draw_self();
				}else{
					draw_set_alpha(INACTIVE_ALPHA);
					draw_self();
					draw_set_alpha(1);
				}


			break;
	
			case obj_gui_label:
		
				gui_helper_sCenter();
				draw_set_font(label_font);

				if (gui_active) {
			
					draw_text_color(x, y, label_text, label_color, label_color, label_color, label_color, 1);
	
				}else{
	
					draw_text_color(x, y, label_text, label_color, label_color, label_color, label_color, INACTIVE_ALPHA);
	
				}

				draw_set_font(_defaultFont);
				gui_helper_rCenter();
	
			break;
	
			case obj_gui_slider:

			if (gui_active) {
	
				draw_self();
				draw_sprite(SPRITE_SLIDER_KNOB, 0, x + knobX, y);
				draw_set_font(slider_titleFont);
				gui_helper_sCenter();
				draw_text_color(x, y-string_height(slider_title), slider_title + ": " + string(slider_value), slider_titleColor, slider_titleColor, slider_titleColor, slider_titleColor, 1);
				draw_set_font(_defaultFont);
				gui_helper_rCenter();
	
			}else{
	
				draw_set_alpha(INACTIVE_ALPHA);
				draw_self();
				draw_sprite(SPRITE_SLIDER_KNOB, 0, x + knobX, y);
				draw_set_font(slider_titleFont);
				gui_helper_sCenter();
				draw_text_color(x, y-string_height(slider_title), slider_title + ": " + string(slider_value), slider_titleColor, slider_titleColor, slider_titleColor, slider_titleColor, 1);
				draw_set_font(_defaultFont);
				gui_helper_rCenter();
				draw_set_alpha(1);
	
			}

			break;
	
			case obj_gui_checkbox:
				
				gui_helper_sCenter();
				if (gui_active) {
	
					draw_set_font(cb_titleFont);	
					draw_self();
					draw_set_halign(fa_left);
					draw_text_color(x + sprite_width, y, cb_title, cb_titleColor, cb_titleColor, cb_titleColor, cb_titleColor, 1);
					draw_set_font(_defaultFont);
	
	
				}else{
	
					draw_set_alpha(INACTIVE_ALPHA);
	
					draw_set_font(cb_titleFont);	
					draw_self();
					draw_set_halign(fa_left);
					draw_text_color(x + sprite_width, y, cb_title, cb_titleColor, cb_titleColor, cb_titleColor, cb_titleColor, 1);
					draw_set_font(_defaultFont);
	
					draw_set_alpha(1);
	
				}
				gui_helper_rCenter();
				
			break;
	
			case obj_gui_textfield:
	
				gui_helper_sCenter();
				if (gui_active) {
	
					draw_self();
					draw_set_font(textfield_titleFont);
					draw_set_halign(fa_center);
					draw_text(x, y - 1.1*string_height(textfield_title), textfield_title);
					draw_set_font(_defaultFont);
					draw_set_valign(fa_middle);
					draw_text_color(x, y, textfield_text, textfield_titleColor, textfield_titleColor, textfield_titleColor, textfield_titleColor, 1);
					gui_helper_rCenter();
	
				}else{
	
					draw_set_alpha(INACTIVE_ALPHA);
					draw_self();
					draw_set_font(textfield_titleFont);
					draw_set_halign(fa_center);
					draw_text(x, y - 1.1*string_height(textfield_title), textfield_title);
					draw_set_font(_defaultFont);
					draw_set_valign(fa_middle);
					draw_text_color(x, y, textfield_text, textfield_titleColor, textfield_titleColor, textfield_titleColor, textfield_titleColor, 1);
					gui_helper_rCenter();
					draw_set_alpha(1);
	
				}
				gui_helper_rCenter();
	
			break;
		
		}
	}
}