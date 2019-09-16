/// @func gui_useShader
/// @param preShaderScript
/// @param postShaderScript
/// @param useShader

// with shader your drawGUI will be slower! (for me it was ~20%)

with (obj_gui_controller) {
	preShaderScript = argument0;
	postShaderScript = argument1;
	useShader = argument2;
}
