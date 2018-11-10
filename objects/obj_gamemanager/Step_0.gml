window_mouse_set(clamp(window_mouse_get_x(), 0, window_get_width()), clamp(window_mouse_get_y(), 0, window_get_height()));

if keyboard_check(vk_escape){
	game_end()
}

if keyboard_check(ord("P")){
	room_goto(level1)
}