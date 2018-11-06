if hold_button_num == 4{
	if detect_collision_box(obj_package, x, y, sprite_width, sprite_height){
		if not toggle{
			global.platform_open_door_lvl3 = not global.platform_open_door_lvl3	
			toggle = true
			in_collision = true
		}
	}
	else{
		in_collision = false
	}
	if not in_collision{
		toggle = false
	}
}