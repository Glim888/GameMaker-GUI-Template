/// @desc

x += 5*(keyboard_check(vk_right) - keyboard_check(vk_left))
y += 5*(keyboard_check(vk_down) - keyboard_check(vk_up))

if (keyboard_check_released(vk_backspace)) camera_set_view_size(view_camera[0], camera_get_view_width(view_camera[0])*1.1, camera_get_view_height(view_camera[0]))