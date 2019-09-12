/// @desc register at obj_gui_controller

// add self to gui_elements list (collision and draw to gui)
with (obj_gui_controller) {
	__ELEMENT__ = other;
	event_user(0);	
}