/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_14)
if room == title_screen{
	draw_text(room_width/2, 50, "Multiplayer Hot Potato of a Game")
	draw_text(room_width/5, 100, "Work as a team to solve the levels and escape the maze\n"+
	"Player 1 can move you using WAD and Player 2 can move using the arrow keys\n"+
	"Pass the package between players by aiming and left clicking.\n" +
	"Recall the package by right clicking\n" + 
	"Press P when you two are ready to play.")
}
