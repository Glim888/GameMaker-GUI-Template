/// @desc fixed Position

if (fixedPosition) {
	
	image_xscale = camera_get_view_width(view_camera[0]) / defaultWidth;
	image_yscale = camera_get_view_height(view_camera[0]) / defaultHeight;
			
	x = (camera_get_view_x(view_camera[0]) + image_xscale*fixedPosition_x);
	y = (camera_get_view_y(view_camera[0]) + image_yscale*fixedPosition_y);
		
		
	Log(image_xscale, x, y);
}