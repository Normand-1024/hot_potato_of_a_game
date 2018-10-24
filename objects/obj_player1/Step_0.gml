if keyboard_check(ord("D")){
	x = min(room_width, x + mov_spd)
}
if keyboard_check(ord("A")){
	x = max(0, x - mov_spd)
	
}
if keyboard_check(ord("W")) and state == "GROUND"{
	y_spd = jmp_init_spd_y
	state = "AIR"
}

if state == "AIR"{
	y += y_spd
	y_spd += jmp_grav
	
	if y >= room_height - sprite_height * image_yscale / 2 {
		state = "GROUND"
		y_spd = 0
		y = room_height - sprite_height * image_yscale / 2
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
	
	//holding_package = pointer_null # Set null until the other player picks up the package
	
	hold_lock_timer = hold_cooldown
}

if not holding and holding_package != pointer_null and mouse_check_button(mb_right){
	holding = true
	holding_package.if_held = true
	hold_lock_timer = 0
}

if hold_lock_timer >= 0 {
	hold_lock_timer -= 1
}