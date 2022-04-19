// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param target
///@param my_ID
function check_n_room(argument0,argument1)
{
	if instance_exists(argument0) && argument0 != -4
	{
		if (argument0.pos_x == global.n_pos_x[argument1] && argument0.pos_y == global.n_pos_y[argument1])
		{
		return true;
		}
		else
		{
		return false;
		}
	}
	else
	{
	return false;
	}
}