/// @desc

var _val = gui_helper_getStringAsync(getString);

if (!is_undefined(_val)) {
	text = _val;
	gui_helper_riseEvents(onRelease);
}

getString = undefined;