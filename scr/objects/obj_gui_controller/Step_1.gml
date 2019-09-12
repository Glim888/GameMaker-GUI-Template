/// @desc Collision GUI Elements

var _size= ds_list_size(interactive_elements);

global.mouseOverGuiElement = false;
for (var _i=0; _i<_size; _i++) {
	
	with (interactive_elements[| _i]) {
		if (global.mouseOverGuiElement) exit;
		event_user(0);
	}
}
