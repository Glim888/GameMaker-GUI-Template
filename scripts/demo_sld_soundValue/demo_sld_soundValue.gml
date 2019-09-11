with (argument0) {
	audio_master_gain(slider_value*0.01);
	if (slider_value <= 1) {
		with (obj_demo_cb_sound) cb_state = 0;	
	}
}