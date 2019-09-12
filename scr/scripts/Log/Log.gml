/// @func Log
/// @param message to log
/// @desc writing to console
/// @return 


if (argument_count > 0) {
    var msg = string(argument[0]);
    for (var i = 1; i < argument_count; i++) {
        msg += ", " + string(argument[i])
    }
	
	var _event = "";
	switch (event_type) {
		case ev_create: _event = "ev_create"; break;
		case ev_destroy: _event = "ev_destroy"; break;
		case ev_step: _event = "ev_step"; break;
		case ev_alarm: _event = "ev_alarm"; break;
		case ev_keyboard: _event = "ev_keyboard"; break;
		case ev_keypress: _event = "ev_keypress"; break;
		case ev_keyrelease: _event = "ev_keyrelease"; break;
		case ev_mouse: _event = "ev_mouse"; break;
		case ev_collision: _event = "ev_collision"; break;
		case ev_other: _event = "ev_other"; break;
		case ev_draw: _event = "ev_draw"; break;
	}
	
	msg += " ("+object_get_name(object_index) + "|" + _event + ")";
    show_debug_message(msg)
}










