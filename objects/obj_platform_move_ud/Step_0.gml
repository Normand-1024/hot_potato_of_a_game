//room 1
if platform_num == 0{
	if global.platform_open_lvl1 {
		x = pos0_x
		y = pos0_y - 100
	}
	else{
		x = pos0_x
		y = pos0_y
	}
}
//room 2
else if platform_num == 1{
	if global.platform_open_top_lvl2{
		x = pos0_x
		y = pos0_y + 200
	}
	else{
		x = pos0_x
		y = pos0_y
	}
}
else if platform_num == 2{
	if global.platform_open_top_lvl2{
		x = pos0_x + 200
		y = pos0_y
	}
	else{
		x = pos0_x
		y = pos0_y
	}
}
else if platform_num == 3{
	if global.platform_open_bottom_lvl2{
		x = pos0_x + 200
		y = pos0_y
	}
	else{
		x = pos0_x
		y = pos0_y
	}
}
//room 3
else if platform_num == 4{
	if global.platform_open_door_lvl3{
		x = pos0_x
		y = pos0_y - 125
	}
	else{
		x = pos0_x
		y = pos0_y
	}
}
else if platform_num == 5{
	if global.platform_raise_floor_lvl3{
		x = pos0_x
		y+= 5
		if (y >= room_height + 2){
			y = 0	
		}
	}
}