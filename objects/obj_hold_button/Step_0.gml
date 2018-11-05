if hold_button_num == 0{
	if detect_collision_box(obj_package, x, y, sprite_width, sprite_height){
		global.platform_open_lvl1 = true				
	}
	else{
		global.platform_open_lvl1 = false
	}
}
else if hold_button_num == 1{
	if detect_collision_box(obj_package, x, y, sprite_width, sprite_height)
		or
		detect_collision_box(obj_player2, x, y, sprite_width, sprite_height){
		global.platform_open_top_lvl2 = true
	}
	else{
		global.platform_open_top_lvl2 = false
	}
}
else if hold_button_num == 2{
	if detect_collision_box(obj_package, x, y, sprite_width, sprite_height)
		or
		detect_collision_box(obj_player1, x, y, sprite_width, sprite_height){
		global.platform_open_bottom_lvl2 = true
	}
	else{
		global.platform_open_bottom_lvl2 = false
	}
}
