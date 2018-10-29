if !if_held{
	spd_y += grav
	if place_meeting(x, y+spd_y, obj_platform_master){
		while (!place_meeting(x, y+sign(spd_y), obj_platform_master)){
			y += sign(spd_y)
		}
		spd_y = 0
		
		if sign(spd_x + -sign(spd_x) * frict) != sign(spd_x){
			spd_x = 0
		}
		else{
			spd_x += -sign(spd_x) * frict
		}
	}
	else{
		y = min(room_height - sprite_height * image_yscale / 2,  y + spd_y)
	}
	
	if place_meeting(x+spd_x, y, obj_platform_master){
		while (!place_meeting(x+sign(spd_x), y, obj_platform_master)){
			x += sign(spd_x)	
		}
		spd_x = 0
	}
	else{
		x = min(max(0, x + spd_x), room_width - sprite_width * image_xscale / 2)
	}
	
	//we only activiate the button if we are not being held
	if touch_button == false{
		button_ref = collision_rectangle(x - sprite_width * image_xscale / 2, 
							   y - sprite_height * image_yscale / 2,
							   x + sprite_width * image_xscale / 2,
							   y + sprite_height * image_yscale / 2,
							   obj_button, false, false)
		if button_ref{
			if button_ref.object_index == obj_toggle_button{
				touch_button = true
				//move all the move platforms
				show_debug_message(instance_number(obj_platform_move_all))
				for (var i = 0; i < instance_number(obj_platform_move_all); i++){
					var inst = instance_find(obj_platform_move_all, i)
					inst.should_i_move = true;
				}
			}
		}
		else{
			
		}
	}
	
}
