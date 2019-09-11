/// @func gui_constants


enum eventType_slider{

	onClick = 0,
	onChange = 1,
	onRelease = 2,

};

enum eventType_button{

	onRelease = 2,

};

enum eventType_checkBox{

	onRelease = 2,

};


enum eventType_textField{

	onClick = 0,
	onRelease = 2,

};


#macro PANEL_HEAD_SIZE 50
#macro PANEL_TITLE_COL c_white
#macro PANEL_BORDER_SIZE 3
#macro PANEL_TITLE_FONT font_32


#macro SPRITE_SLIDER_KNOB spr_gui_knob
#macro SPRITE_PANEL_CLOSE spr_gui_exit

#macro INACTIVE_ALPHA 0.4