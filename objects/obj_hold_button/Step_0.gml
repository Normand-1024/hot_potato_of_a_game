if hold_button_num == 0{
	if collision_rectangle(x - sprite_width / 2,
							y - sprite_height / 2,
							x + sprite_width / 2,
							y + sprite_height / 2,
							obj_package, false, true){
		global.platform_open_lvl1 = true				
	}
	else{
		global.platform_open_lvl1 = false
	}
}
else if hold_button_num == 1{
	if collision_rectangle(x - sprite_width / 2,
							y - sprite_height/ 2,
							x + sprite_width/ 2,
							y + sprite_height / 2,
							obj_package, false, true)
		or
		collision_rectangle(x - sprite_width / 2,
							y - sprite_height / 2,
							x + sprite_width / 2,
							y + sprite_height / 2,
							obj_player2, false, true){
		global.platform_open_top_lvl2 = true
	}
	else{
		global.platform_open_top_lvl2 = false
	}
}
else if hold_button_num == 2{
	if collision_rectangle(x - sprite_width / 2,
							y - sprite_height/ 2,
							x + sprite_width/ 2,
							y + sprite_height / 2,
							obj_package, false, true)
		or
		collision_rectangle(x - sprite_width / 2,
							y - sprite_height / 2,
							x + sprite_width / 2,
							y + sprite_height / 2,
							obj_player1, false, true){
		global.platform_open_bottom_lvl2 = true
	}
	else{
		global.platform_open_bottom_lvl2 = false
	}
}
