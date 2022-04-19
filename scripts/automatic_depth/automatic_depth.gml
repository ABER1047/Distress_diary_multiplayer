// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation
function automatic_depth()
{
	if room_height > room_width
	{
	depth = -room_height
	}
	else
	{
	depth = -room_width
	}
}