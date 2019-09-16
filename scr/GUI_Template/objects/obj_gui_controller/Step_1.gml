/// @desc Collision GUI Elements


// kill timer
for (var _i=0; _i<ds_list_size(killTimer_elements); _i++) {
	with (killTimer_elements[| _i]) {
		
		if (killTimer <= -200) {
			var _pos = ds_list_find_index(other.killTimer_elements, self);
			if (_pos != -1 )ds_list_delete(other.killTimer_elements, _pos);
			instance_destroy();	
		}	
		
		if (killTimer-- == 0) {			
			gui_inactivePos = [x, display_get_gui_height()+panel_size[1]*1.1];
			gui_active = false;
		}
									
	}	
}

// collisions with interactive_elements (click)
var _size= ds_list_size(interactive_elements);
global.mouseOverGuiElement = false;
for (var _i=0; _i<_size; _i++) {
	
	with (interactive_elements[| _i]) {
		if (global.mouseOverGuiElement) {
			exit;
		}
		event_user(0);
	}
}

