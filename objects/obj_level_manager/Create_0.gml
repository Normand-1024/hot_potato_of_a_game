if room == level1{
	global.platform_open_lvl1 = false
}
else if room == level2{
	global.platform_open_top_lvl2 = false
	global.platform_open_bottom_lvl2 = false
}
else if room == level3{
	global.platform_open_door_lvl3 = false
	global.platform_raise_floor_lvl3 = false
}
else if room == level4{
	//controlled by the toggle
	global.platform_small_entrance_lvl4 = false
	global.platform_step_up_lvl4 = false
	//controlled by the hold button
	global.platform_top_left_block_lvl4 = false
	global.platform_upper_left_right_lvl4 = false
	global.platform_lower_left_right_lvl4 = false
}