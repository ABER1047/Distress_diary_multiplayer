/// @description Insert description here
// You can write your code in this editor
global.show_hitbox++
if instance_exists(wall_parents)
{
wall_parents.image_blend = c_white
wall_parents.image_alpha = 0.1
}

if global.show_hitbox > 1
{
	if instance_exists(wall_parents)
	{
	wall_parents.image_blend = c_black
	wall_parents.image_alpha = 1
	}
global.show_hitbox = 0 
}


guide_message("show object mask "+string(global.show_hitbox),6)

//show_debug_message(global.map_data_obj_test[0,0])
//show_debug_message(array_length(global.map_data_obj_test[0,0]))