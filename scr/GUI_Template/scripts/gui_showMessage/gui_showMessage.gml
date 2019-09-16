/// @func gui_showMessage
/// @param title
/// @param text
/// @param font
/// @param colorText
/// @param timerInSteps

// get size of panel
var _size = gui_helper_getSizeOfText([argument0, argument1], [PANEL_TITLE_FONT, argument2]);
_size[0] *= 1.3;
_size[1] *= 1.1;

var _pos = [display_get_gui_width()*0.5 - _size[0]*0.5, display_get_gui_height() - (_size[1]+PANEL_HEAD_SIZE)];
var _posStart = [_pos[0], display_get_gui_height() + _size[1]];
gui_showMessage_ext(_pos, _posStart, argument0, argument1, argument2, argument3, true, argument4);