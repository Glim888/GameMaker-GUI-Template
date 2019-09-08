/// @desc

var _val = async_get_string(getString);

if (!is_undefined(_val)) {
	text = _val;
	if (onRelease != noone) script_execute(onRelease, self);	
}

getString = undefined;