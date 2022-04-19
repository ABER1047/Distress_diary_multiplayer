// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation

///@param item
///@param t_bp_name
///@param decrease_num
function decrease_item_num_in_inv(argument0,argument1,argument2,argument3,argument4)
{
global.refresh_item_weight = 1
var xx_ = 0
var yy_ = 0
	with(inventory_backpack)
	{
		if bp_name = argument1
		{
			if argument0 != -4
			{
				for(var i = 0; i < max_width; i++)
				{
					for(var ii = 0; ii < max_height; ii++)
					{
						if in_bp_item_name[i,ii] = argument0
						{
						xx_ = i;
						yy_ = ii;
						in_bp_item_stacks[i,ii] -= argument2;
						break;
						break;
						}
					}
				}
			}
		}
	}
	
	if argument0 != -4
	{
		with(inventory_item)
		{
			if (owner_.bp_name = argument1 && inv_x = xx_ && inv_y = yy_)
			{
			stack_num -= argument2;
		
				if stack_num <= 0
				{
				var check_out_of_array_x = inv_x-floor(xsize/2)
				var check_out_of_array_y = inv_y-floor(ysize/2)
				
					if check_out_of_array_x < 0
					{
					check_out_of_array_x = 0
					}
				
					if check_out_of_array_y < 0
					{
					check_out_of_array_y = 0
					}
			
					for(var i = 0; i < xsize; i++)
					{
					var xx = check_out_of_array_x+i;
						for(var ii = 0; ii < ysize; ii++)
						{
						var yy = check_out_of_array_y+ii;
							if (xx < owner_.max_width && yy < owner_.max_height)
							{
							owner_.in_bp_item_spr[check_out_of_array_x,check_out_of_array_y] = -4;
							saved_owner_.in_bp_item_spr[check_out_of_array_x,check_out_of_array_y] = -4;
							}
						}
					}
				instance_destroy()
				}
			}
		}
	}
	else
	{
		//with(inventory_backpack)
		//{
			//for(var i = 0; i < max_width; i++)
			//{
				//for(var ii = 0; ii < max_height; ii++)
				//{
				//in_bp_item_spr[i,ii] = -4;
				//}
			//}
		//}
				

			with(inventory_item)
			{
				if (owner_ = argument1 && inv_x = argument3 && inv_y = argument4)
				{
					if (xsize > 1 || ysize > 1)
					{
					var _xs = 1-xsize%2
					var _ys = 1-ysize%2
					var _xx = -floor(xsize/2)+_xs
					var _yy = -floor(ysize/2)+_ys
			
			
						for(var i = _xx; i <= (xsize-floor(xsize/2)-xsize%2); i++)
						{
							for(var ii = _yy; ii <= (ysize-floor(ysize/2)-ysize%2); ii++)
							{
							var _xx_s = replace_inv_x+i
							var _yy_s = replace_inv_y+ii
				
							if _xx_s < 0
							{
							_xx_s = 0
							}
				
							if _yy_s < 0
							{
							_yy_s = 0
							}
				
							owner_.in_bp_item_spr[_xx_s,_yy_s] = -4;
							}
						}
					}
					else
					{
					owner_.in_bp_item_spr[inv_x,inv_y] = -4;
					}
		
			//owner_.in_bp_item_spr[inv_x,inv_y] = sprite_get_name(sprite_index)
			owner_.in_bp_item_img_ind[inv_x,inv_y] = -4;
			owner_.in_bp_item_xsize[inv_x,inv_y] = -4;
			owner_.in_bp_item_ysize[inv_x,inv_y] = -4;
			owner_.in_bp_item_oxsize[inv_x,inv_y] = -4;
			owner_.in_bp_item_oysize[inv_x,inv_y] = -4;
			owner_.in_bp_item_angle[inv_x,inv_y] = -4;
			owner_.in_bp_item_color[inv_x,inv_y] = -4;
			owner_.in_bp_item_name[inv_x,inv_y] = -4;
			owner_.in_bp_item_stacks[inv_x,inv_y] = -4;
			owner_.in_bp_item_max_stacks[inv_x,inv_y] = -4;
			owner_.in_bp_item_sname[inv_x,inv_y] = -4;
			
			
			var bp_owner_ins = owner_.owner
			bp_owner_ins.in_bp_item_spr[inv_x,inv_y] = -4;
			bp_owner_ins.in_bp_item_img_ind[inv_x,inv_y] = -4;
			bp_owner_ins.in_bp_item_xsize[inv_x,inv_y] = -4;
			bp_owner_ins.in_bp_item_ysize[inv_x,inv_y] = -4;
			bp_owner_ins.in_bp_item_oxsize[inv_x,inv_y] = -4;
			bp_owner_ins.in_bp_item_oysize[inv_x,inv_y] = -4;
			bp_owner_ins.in_bp_item_angle[inv_x,inv_y] = -4;
			bp_owner_ins.in_bp_item_color[inv_x,inv_y] = -4;
			bp_owner_ins.in_bp_item_name[inv_x,inv_y] = -4;
			bp_owner_ins.in_bp_item_stacks[inv_x,inv_y] = -4;
			bp_owner_ins.in_bp_item_max_stacks[inv_x,inv_y] = -4;
			bp_owner_ins.in_bp_item_sname[inv_x,inv_y] = -4;
			instance_destroy()
			}
		}
	}
}