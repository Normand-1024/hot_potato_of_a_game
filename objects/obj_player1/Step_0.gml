if keyboard_check(ord("D")){
	//right collision
	if (place_meeting(x+mov_spd, y, obj_platform_master)){
		while(!place_meeting(x+1, y, obj_platform_master)){
			x+= 1	
		}
	}else{
		x = min(room_width, x + mov_spd)
	}
}
if keyboard_check(ord("A")){
	if (place_meeting(x-mov_spd, y, obj_platform_master)){
		while(!place_meeting(x-1, y, obj_platform_master)){
			x-= 1	
		}
	}else{
		x = max(0, x - mov_spd)
	}
}
if keyboard_check(ord("W")) and (state == "GROUND" or state="PLATFORM"){
	y_spd = jmp_init_spd_y
	state = "AIR"
}

if state == "AIR"{
	//collide with top of the platform, we sit on it
	if(place_meeting(x, y+y_spd, obj_platform_master)){
		while(!place_meeting(x, y+sign(y_spd), obj_platform_master)){
			y += sign(y_spd)	
		}
		inst = instance_place(x, y+sign(y_spd), obj_platform_master)
		if (inst != noone){
			if (inst.y > y){
				state = "PLATFORM"	
			}
		}
		y_spd = 0
		
	}
	y += y_spd
	y_spd += jmp_grav
	y_spd = sign(y_spd) * min(abs(y_spd), max_y_spd)
	
	if y >= room_height - image_yscale / 2 + 2 {
		y = 0 - sprite_height / 2
	}
}
//need to check when I fall off platform to enable air mode
if state == "PLATFORM"{
	if !place_meeting(x, y+1, obj_platform_master){
		y_spd = 1
		state = "AIR"
	}
	while (place_meeting(x, y, obj_platform_master)){
		y-=1;
	}
}

if holding and holding_package{
	holding_package.x = x + 4
	holding_package.y = y
}

// Shoot'er
if holding and mouse_check_button(mb_left){
	holding = false
	holding_package.if_held = false
	
	len = sqrt(power(mouse_x - x,2) + power(mouse_y - y, 2))
	throw_x = (mouse_x - x) / len
	throw_y = (mouse_y - y) / len
	holding_package.spd_x = throw_spd * throw_x
	holding_package.spd_y = throw_spd * throw_y
	
	hold_lock_timer = hold_cooldown
}

if not holding and holding_package != pointer_null and mouse_check_button(mb_right){
	//holding = true
	//holding_package.if_held = true
	hold_lock_timer = 0
	
	len = sqrt(power(x - holding_package.x,2) + power(y - holding_package.y, 2))
	back_x = (x - holding_package.x) / len
	back_y = (y - holding_package.y) / len
	holding_package.spd_x += back_spd * back_x
	holding_package.spd_y += back_spd * back_y
	
	holding_package.spd_x = sign(holding_package.spd_x) * min(abs(holding_package.spd_x), back_max_spd)
	holding_package.spd_y = sign(holding_package.spd_y) * min(abs(holding_package.spd_y), back_max_spd)
}

if hold_lock_timer >= 0 {
	hold_lock_timer -= 1
}

if holding_package != pointer_null{
	if holding_package.if_held and not holding{
		holding_package = pointer_null
	}
}