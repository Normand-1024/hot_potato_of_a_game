if (place_meeting(x,y,obj_player1) or place_meeting(x,y,obj_player2)){
	room_goto((room + 1)%5)
}