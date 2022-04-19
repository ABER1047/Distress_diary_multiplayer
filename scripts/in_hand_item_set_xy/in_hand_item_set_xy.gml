// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation


///@param standard
///@param target
///@param use_z_grid
function in_hand_item_set_xy(argument0,argument1,argument2)
{
	if instance_exists(argument0)
	{
	var my_p = get_my_p(global.nickname,0)
		if instance_exists(my_p)
		{
		var __cal_yy = argument1.y-argument2
		
			if argument1.last_angle = 0
			{
			argument0.x = argument1.x+16
			argument0.y = __cal_yy+12
			}
			else if argument1.last_angle = 1
			{
			argument0.x = argument1.x
			argument0.y = __cal_yy
			}
			else if argument1.last_angle = 2
			{
			argument0.x = argument1.x-16
			argument0.y = __cal_yy+12
			}
			else
			{
			argument0.x = argument1.x
			argument0.y = __cal_yy+16
			}
		}
	}
}