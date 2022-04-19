// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation


///@param item
///@param t_bp_name
///@param type[num/pos]
function check_item_in_inv(argument0,argument1,argument2)
{
	with(inventory_backpack)
	{
		if bp_name = argument1
		{
		var check__item_num = 0
			for(var ii = 0; ii < max_height; ii++)
			{
				for(var i = 0; i < max_width; i++)
				{
				global.searched_item_xpos = i;
				global.searched_item_ypos = ii;
					if (in_bp_item_name[i,ii] = argument0)
					{
						if argument2 = 1
						{
						return -1;
						}
						else
						{
						check__item_num += in_bp_item_stacks[i,ii];
						}
					}
				}
			}
			
			if argument2 = 0
			{
			return check__item_num;
			}
		}
	}
	
	if is_real(argument1) && instance_exists(argument1)
	{
		for(var ii = 0; ii < argument1.max_height; ii++)
		{
			for(var i = 0; i < argument1.max_width; i++)
			{
			global.searched_item_xpos = i;
			global.searched_item_ypos = ii;
				if (argument1.in_bp_item_name[i,ii] = argument0)
				{
					if argument2 = 1
					{
					return -1;
					}
					else
					{
					check__item_num += argument1.in_bp_item_stacks[i,ii];
					}
				}
			}
		}
		
		if argument2 = 0
		{
		return check__item_num;
		}
	}
}