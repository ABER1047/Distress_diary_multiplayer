// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation
///@param xsize
///@param ysize
///@param bp_name
///@param x
///@param y

function inv_system_sect4(argument0,argument1,argument2,argument3,argument4)
{
	if bp_ = noone
	{
	var bp_width = argument0
	var bp_height = argument1

	show_debug_message("spr_ : "+string(in_bp_item_spr[0,0]))
	bp_ = open_backpack(bp_width,bp_height,string(argument2),argument3,argument4)

		if opened_bp = 1
		{
			for(var i = 0; i < (bp_width); i++)
			{
				for(var ii = 0; ii < (bp_height); ii++)
				{
					if (in_bp_item_spr[i,ii] != -4 && in_bp_item_spr[i,ii] != spr_wall_mask && in_bp_item_spr[i,ii] != "spr_wall_mask")
					{
					give_item_inv(asset_get_index(in_bp_item_spr[i,ii]),in_bp_item_img_ind[i,ii],in_bp_item_angle[i,ii],in_bp_item_xsize[i,ii],in_bp_item_ysize[i,ii],i,ii,bp_,in_bp_item_color[i,ii],in_bp_item_name[i,ii],in_bp_item_stacks[i,ii],in_bp_item_max_stacks[i,ii],1,in_bp_item_sname[i,ii]);
					}
				}
			}
		}
		else
		{
			for(var i = 0; i < (bp_width); i++)
			{
				for(var ii = 0; ii < (bp_height); ii++)
				{
				in_bp_item_spr[i,ii] = -4;
				in_bp_item_img_ind[i,ii] = -4;
				in_bp_item_xsize[i,ii] = -4;
				in_bp_item_ysize[i,ii] = -4;
				in_bp_item_oxsize[i,ii] = -4;
				in_bp_item_oysize[i,ii] = -4;
				in_bp_item_angle[i,ii] = -4;
				in_bp_item_color[i,ii] = -4;
				in_bp_item_name[i,ii] = -4;
				in_bp_item_stacks[i,ii] = -4;
				in_bp_item_max_stacks[i,ii] = -4;
				in_bp_item_sname[i,ii] = -4;
				}
			}
		}

	opened_bp = 1;
	}
	else
	{
	inv_system_close_bp()
	}
}