// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation
function inv_system_sect2()
{
var _b_owner = saved_owner_
var _b_angle = b_angle_set

	if cannot_place = 0
	{
		with(inventory_backpack)
		{
			for(var i = 0; i < max_width; i++)
			{
				for(var ii = 0; ii < max_height; ii++)
				{
				in_bp_item_spr[i,ii] = -4;
				}
			}
			//show_debug_message("\n"+string(check_out_of_array_x)+" > "+string(xx))
			//show_debug_message(string(check_out_of_array_y)+" > "+string(yy))
		}
		
		
		////////////////////////////////reset_placement///////////////////////////////
		if !place_meeting(__xx,__yy,inventory_item)
		{
			if stack_num > 1 && (keyboard_check(vk_control) || now_move_stacks > 1)
			{
			grabed = 0
			var shape_stack = now_move_stacks
				if keyboard_check(vk_control)
				{
				var shape_stack = floor(stack_num/2)
				}
		
			//손을 땐쪽에 아이템 재생성
			give_item_inv(sprite_index,image_index,angle_set,oxsize,oysize,replace_inv_x,replace_inv_y,owner_,bg_color,item_name,shape_stack,max_stack_num,1,short_name);
			stack_num -= shape_stack;

			owner_ = _b_owner
			saved_owner_ = _b_owner
			angle_set = _b_angle

				if angle_set = 0
				{
				xsize = oxsize
				ysize = oysize
				}
				else
				{
				xsize = oysize
				ysize = oxsize
				}
			}
			else
			{
			inv_x = replace_inv_x
			inv_y = replace_inv_y
				if cannot_place = 0
				{
				saved_owner_ = owner_
				}
			}
		}
		

		if place_meeting(__xx,__yy,inventory_item)
		{
		var pl_item = instance_place(__xx,__yy,inventory_item);
			if pl_item.sprite_index = spr_stackables && pl_item.image_index = image_index
			{
			var _max = pl_item.max_stack_num;
				if (pl_item.stack_num+stack_num) <= _max
				{
				pl_item.stack_num += stack_num;
				instance_destroy();
				}
				else
				{
				grabed = 0
				ready_grab = 0
				owner_ = _b_owner
				saved_owner_ = _b_owner
				angle_set = _b_angle
				
					if angle_set = 0
					{
					xsize = oxsize
					ysize = oysize
					}
					else
					{
					xsize = oysize
					ysize = oxsize
					}
		
				stack_num -= _max-pl_item.stack_num
				pl_item.stack_num = _max
				}
			}
		};

		/////////////////////////////////////////////////////////////////////////////
		with(inventory_item)
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
					
					owner_.in_bp_item_spr[_xx_s,_yy_s] = spr_wall_mask;
					}
				}
			}
			
		owner_.in_bp_item_spr[inv_x,inv_y] = sprite_get_name(sprite_index)
		owner_.in_bp_item_img_ind[inv_x,inv_y] = image_index
		owner_.in_bp_item_xsize[inv_x,inv_y] = xsize
		owner_.in_bp_item_ysize[inv_x,inv_y] = ysize
		owner_.in_bp_item_oxsize[inv_x,inv_y] = oxsize
		owner_.in_bp_item_oysize[inv_x,inv_y] = oysize
		owner_.in_bp_item_angle[inv_x,inv_y] = angle_set
		owner_.in_bp_item_color[inv_x,inv_y] = bg_color
		owner_.in_bp_item_name[inv_x,inv_y] = item_name
		owner_.in_bp_item_stacks[inv_x,inv_y] = stack_num
		owner_.in_bp_item_max_stacks[inv_x,inv_y] = max_stack_num
		owner_.in_bp_item_sname[inv_x,inv_y] = short_name;
		}
		
	inv_system_close_bp()
	}
}