/// @func gui_addEventHandler
/// @param gui component
/// @param event_type
/// @param eventHander


with (argument0) {
		
	switch(argument1) {
		
		case 0: ds_list_add(onClick, argument2); break;
		case 1: ds_list_add(onChange, argument2) break;
		case 2: ds_list_add(onRelease, argument2); break;
		
	}
}