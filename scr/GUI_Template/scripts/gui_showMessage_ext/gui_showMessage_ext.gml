/// @func gui_showMessage_ext
/// @param posXY
/// @param posStartXY
/// @param title
/// @param text
/// @param font
/// @param colorText
/// @param useExitButton
/// @param timerInSteps

// get size of panel
var _size = gui_helper_getSizeOfText([argument2, argument3], [PANEL_TITLE_FONT, argument4]);
_size[0] *= 1.3;
_size[1] *= 1.1;

with (gui_panel_create(argument0, argument1, -100000, 0.1, false, _size, PANEL_BODY_COLOR, PANEL_HEADL_COLOR, PANEL_HEADR_COLOR, argument2, true, true, argument6, spr_gui_panel)) {
	gui_active = true;	
	var _lbl = gui_label_create([0, 0], [0, 0], 0, 0, true, argument3, argument4, argument5);
	gui_panel_addComponent(self, [_size[0]*0.5,_size[1]*0.5], _lbl);
	
	// add element to killTimer list (it will be removed after a specific time)
	if (argument7 > 0) {
		killTimer = argument7;
		
		// remove older message boxes
		with (obj_gui_controller) {		
			for (var _i=0; _i<ds_list_size(killTimer_elements); _i++) {
				with (killTimer_elements[| _i]) {
					killTimer = min (0, killTimer);
					gui_inactivePos = [x, display_get_gui_height()+panel_size[1]*1.1];
					gui_active = false;
				}
			}
			// add new message box		
			ds_list_add(killTimer_elements, other);
			
		}
	}
	
}