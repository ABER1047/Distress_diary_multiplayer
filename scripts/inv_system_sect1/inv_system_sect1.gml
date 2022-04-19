// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation

function inv_system_sect1()
{
inv_system_sect5()
grabed = 0
global.grabed = 0
replace_inv_x = inv_x
replace_inv_y = inv_y

if cannot_place = 1
{
	if check_f = 1
	{
	owner_ = saved_owner_

	angle_set = b_angle_set
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


	if cannot_place_reason = "Outside of place"
	{
	var target_ = get_my_p(global.nickname,0);
	var _st_bl = instance_create_depth(target_.x,target_.y,999,obj_item);
	_st_bl.sprite_index = sprite_index;
	_st_bl.image_index = image_index;
	_st_bl.direction = target_.last_angle*90;
	_st_bl.speed = 4;
	_st_bl.zspeed = -4;
	_st_bl.alarm[11] = 5;
	_st_bl.xsize = oxsize;
	_st_bl.ysize = oysize;
	_st_bl.item_name = item_name;
	_st_bl.stack_num = stack_num;
	_st_bl.max_stack_num = max_stack_num;
	_st_bl.pos_x = global.n_pos_x[code_m.my_ID];
	_st_bl.pos_y = global.n_pos_y[code_m.my_ID];
	_st_bl.short_name = short_name;
	
		if sprite_index = spr_backpack
		{
		inv_system_close_bp()
		show_debug_message(bp_xsize)
		_st_bl.max_width = bp_xsize
		_st_bl.max_height = bp_ysize
			for(var i = 0; i < (bp_xsize); i++)
			{
				for(var ii = 0; ii < (bp_ysize); ii++)
				{
				_st_bl.in_bp_item_spr[i,ii] = in_bp_item_spr[i,ii];
				_st_bl.in_bp_item_img_ind[i,ii] = in_bp_item_img_ind[i,ii];
				_st_bl.in_bp_item_xsize[i,ii] = in_bp_item_xsize[i,ii];
				_st_bl.in_bp_item_ysize[i,ii] = in_bp_item_ysize[i,ii];
				_st_bl.in_bp_item_oxsize[i,ii] = in_bp_item_oxsize[i,ii];
				_st_bl.in_bp_item_oysize[i,ii] = in_bp_item_oysize[i,ii];
				_st_bl.in_bp_item_angle[i,ii] = in_bp_item_angle[i,ii];
				_st_bl.in_bp_item_color[i,ii] = in_bp_item_color[i,ii];
				_st_bl.in_bp_item_name[i,ii] = in_bp_item_name[i,ii];
				_st_bl.in_bp_item_stacks[i,ii] = in_bp_item_stacks[i,ii];
				_st_bl.in_bp_item_max_stacks[i,ii] = in_bp_item_max_stacks[i,ii];
				_st_bl.in_bp_item_sname[i,ii] = in_bp_item_sname[i,ii];
				};
			};
		}
	_st_bl.check_empty = check_empty
	decrease_item_num_in_inv(-4,saved_owner_,stack_num,inv_x,inv_y)
	}
}


check_f = 0

	if instance_exists(saved_owner_)
	{
	depth = saved_owner_.depth-1
	}
}