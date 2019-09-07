/// @description click

if (!global.disableButtons) {

	for(var i=0; i<3; i++) {
	    if device_mouse_check_button_released(i, mb_any) {
	        if point_in_rectangle( device_mouse_x(i), device_mouse_y(i), bbox_left, bbox_top, bbox_right, bbox_bottom) {
	            event_user(0);
			}
		}    
	}
}

