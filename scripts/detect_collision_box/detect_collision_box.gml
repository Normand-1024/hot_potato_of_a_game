obj_name = argument0
obj_x = argument1
obj_y = argument2
obj_w = argument3
obj_h = argument4

return collision_rectangle(obj_x - obj_w / 2,
							obj_y - obj_h / 2,
							obj_x + obj_w / 2,
							obj_y + obj_h/ 2,
							obj_name, false, true)