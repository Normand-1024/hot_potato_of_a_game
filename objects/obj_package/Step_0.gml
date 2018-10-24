if !if_held{
	spd_y += grav
	y = min(room_height - sprite_height * image_yscale / 2,  y + spd_y)
	x = min(max(0, x + spd_x), room_width - sprite_width * image_xscale / 2)
}