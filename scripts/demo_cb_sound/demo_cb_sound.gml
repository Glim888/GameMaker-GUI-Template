
with (argument0) {
	audio_master_gain(cb_state);
	if (!cb_state) with (obj_demo_sld_soundValue) slider_value = 0;
	if (cb_state) with (obj_demo_sld_soundValue) slider_value = 100;
}


