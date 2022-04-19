// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param check_type
function check_position_inside_view(argument0,argument1,argument2)
{
var s_w = camera_get_view_width(view_camera[0])
var s_h = camera_get_view_height(view_camera[0])

	if argument2 = 0
	{
	var s_x = camera_get_view_x(view_camera[0])
	var s_y = camera_get_view_y(view_camera[0])

		if (argument0 > s_x && argument0 < s_x+s_w) && (argument1 > s_y && argument1 < s_y+s_h)
		{
		return true;
		}
		else
		{
		return -4;
		}
	}
	else
	{
		if (argument0 > 0 && argument0 < s_w) && (argument1 > 0 && argument1 < s_h)
		{
		return true;
		}
		else
		{
		return -4;
		}
	}
}