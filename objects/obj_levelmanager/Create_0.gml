if room == level1{
	level1_gate1_open = false
	for (var_i = 0; var_i < instance_number(obj_hold_button); var_i++){
		show_message(string(object_get_name(instance_find(obj_hold_button, var_i).object_index)))
	}
}