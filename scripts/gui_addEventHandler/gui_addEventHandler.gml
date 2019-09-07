/// @func gui_addEventHandler
/// @param gui component
/// @param event_type
/// @param eventHander


with (argument0) {
	
	if (object_index == obj_gui_button && argument1 != eventHandler_t.onRelease) {
		LogWarning("cant add eventHandler to this gui object");
		return;
	}

	
	if (object_index == obj_gui_checkBox && argument1 != eventHandler_t.onRelease) {
		LogWarning("cant add eventHandler to " + object_get_name(object_index));
		return;
	}
	
	switch(argument1) {
		
		case eventHandler_t.onClick: onClick = argument2; break;
		case eventHandler_t.onChange: onChange = argument2 break;
		case eventHandler_t.onRelease: onRelease = argument2; break;
		
	}
}