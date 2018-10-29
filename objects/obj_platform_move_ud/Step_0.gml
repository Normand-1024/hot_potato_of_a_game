if should_i_move == true{
	if dir_to_move == "UP"{
		y -= 2*sprite_height * image_yscale
	}
	else if dir_to_move == "DOWN"{
		y += 2*sprite_height * image_yscale
	}
	should_i_move = false
	moved = true
}

if moved == true{
	if dir_to_move == "UP"{
		dir_to_move = "DOWN"
	}
	else if dir_to_move == "DOWN"{
		dir_to_move = "UP"
	}
	
	moved = false	
}