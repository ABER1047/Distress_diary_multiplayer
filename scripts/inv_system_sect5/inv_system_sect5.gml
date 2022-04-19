// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation
function inv_system_sect5()
{
var x_scale = xsize/3*2
total_string = item_name

if string_length(total_string) > x_scale*9
{
var deleted_string1 = string_delete(total_string,2,string_length(total_string))
var deleted_string2 = string_delete(total_string,1,1)
	
	while(true)
	{
	var _checker = string_pos(" ",total_string)
		if (_checker != 0)
		{
			repeat(_checker-1)
			{
			deleted_string2 = string_delete(deleted_string2,1,1)
			}
		total_string = string_upper(string(deleted_string1))+string(deleted_string2)
		}
		else
		{
		total_string = string_delete(total_string,floor(x_scale),string_length(total_string))
		}
		
		if string_pos(" ",total_string) = 0//string_length(total_string) <= x_scale*9
		{
		return true;
		}
	}
}
}