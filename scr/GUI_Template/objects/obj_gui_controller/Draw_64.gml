/// @desc
var _defaultFont = draw_get_font();
var _size= ds_list_size(gui_elements);
var _parent;
var _b;
var _oIndex;

if (useShader) {
	if (!surface_exists(shaderSurf)) shaderSurf = surface_create(display_get_gui_width(), display_get_gui_height());
	surface_set_target(shaderSurf);
	draw_clear_alpha(c_white, 0);
}
for (var _i=_size-1; _i>=0; _i--) {
	with (gui_elements[| _i]) {
		
		_oIndex = object_index;
		_b = true;
		do {
			
			_b = true;	
			_parent = isCreatedByScript ? object_index : object_get_parent(_oIndex);
		
			switch (_parent) {
		
				#region obj_gui_panel
				case obj_gui_panel:
	
					if (surface_exists(panelSurf)) {
						draw_surface(panelSurf, x, y);
						event_user(1);
					}else{
						event_user(3);	
					}
	
				break;
				#endregion
				#region obj_gui_image
				case obj_gui_image:
	
					if (gui_active) {
						draw_self();
						event_user(1);
					}else{
						draw_set_alpha(INACTIVE_ALPHA);
						draw_self();
						event_user(1);
						draw_set_alpha(1);
					}
	
				break;
				#endregion
				#region obj_gui_button
				case obj_gui_button:
				
					draw_set_font(button_titleFont);
					if (gui_active) {
						draw_self();
						gui_helper_sCenter();
						draw_text_color(x, y, button_title, button_titleColor, button_titleColor, button_titleColor, button_titleColor, 1);
						event_user(1);
					}else{
						draw_set_alpha(INACTIVE_ALPHA);
						draw_self();
						gui_helper_sCenter();
						draw_text_color(x, y, button_title, button_titleColor, button_titleColor, button_titleColor, button_titleColor, 1);
						event_user(1);
						draw_set_alpha(1);
					}
					draw_set_font(_defaultFont);


				break;
				#endregion
				#region obj_gui_label
				case obj_gui_label:
		
					draw_set_font(label_font);

					if (gui_active) {
			
						draw_text_color(x, y, label_text, label_color, label_color, label_color, label_color, 1);
						event_user(1);
	
					}else{
	
						draw_text_color(x, y, label_text, label_color, label_color, label_color, label_color, INACTIVE_ALPHA);
						event_user(1);
	
					}

					draw_set_font(_defaultFont);
	
				break;
				#endregion
				#region obj_gui_slider
				case obj_gui_slider:

				if (gui_active) {
	
					draw_self();
					draw_sprite(SPRITE_SLIDER_KNOB, 0, x + knobX, y);
					draw_set_font(slider_titleFont);
					gui_helper_sCenter();
					draw_text_color(x, y-string_height(slider_title), slider_title + ": " + string(slider_value), slider_titleColor, slider_titleColor, slider_titleColor, slider_titleColor, 1);
					event_user(1);
					draw_set_font(_defaultFont);
	
				}else{
	
					draw_set_alpha(INACTIVE_ALPHA);
					draw_self();
					draw_sprite(SPRITE_SLIDER_KNOB, 0, x + knobX, y);
					draw_set_font(slider_titleFont);
					gui_helper_sCenter();
					draw_text_color(x, y-string_height(slider_title), slider_title + ": " + string(slider_value), slider_titleColor, slider_titleColor, slider_titleColor, slider_titleColor, 1);
					event_user(1);
					draw_set_font(_defaultFont);
					draw_set_alpha(1);
	
				}

				break;
				#endregion
				#region obj_gui_checkbox
				case obj_gui_checkbox:
				
					gui_helper_sCenter();
					if (gui_active) {
	
						draw_set_font(cb_titleFont);	
						draw_self();
						draw_set_halign(fa_left);
						draw_text_color(x + sprite_width, y, cb_title, cb_titleColor, cb_titleColor, cb_titleColor, cb_titleColor, 1);
						event_user(1);
						draw_set_font(_defaultFont);
	
	
					}else{
	
						draw_set_alpha(INACTIVE_ALPHA);
	
						draw_set_font(cb_titleFont);	
						draw_self();
						draw_set_halign(fa_left);
						draw_text_color(x + sprite_width, y, cb_title, cb_titleColor, cb_titleColor, cb_titleColor, cb_titleColor, 1);
						event_user(1);
						draw_set_font(_defaultFont);
	
						draw_set_alpha(1);
	
					}
				
				break;
				#endregion
				#region obj_gui_textfield
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
						event_user(1);
	
					}else{
	
						draw_set_alpha(INACTIVE_ALPHA);
						draw_self();
						draw_set_font(textfield_titleFont);
						draw_set_halign(fa_center);
						draw_text(x, y - 1.1*string_height(textfield_title), textfield_title);
						draw_set_font(_defaultFont);
						draw_set_valign(fa_middle);
						draw_text_color(x, y, textfield_text, textfield_titleColor, textfield_titleColor, textfield_titleColor, textfield_titleColor, 1);
						event_user(1);
						draw_set_alpha(1);
	
					}
	
				break;
				#endregion
			default:
				_b = false;
				_oIndex = object_get_parent(_oIndex);
			break;
			}
		}until(_b);
	}
}
gui_helper_rCenter();

// has to be done that way, or draw_XXX_color () will not work
if (useShader) {
	surface_reset_target();
	script_execute(preShaderScript);
	draw_surface(shaderSurf, 0, 0);
	script_execute(postShaderScript);
}