touch_button = true
//move all the move platforms
show_debug_message(instance_number(obj_platform_move_all))
for (var i = 0; i < instance_number(obj_platform_move_all); i++){
	var inst = instance_find(obj_platform_move_all, i)
	inst.should_i_move = true;
}