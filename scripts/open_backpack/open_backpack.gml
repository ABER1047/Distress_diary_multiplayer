// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation


///@param bp_width
///@param bp_height
///@param bp_name
///@param window_x
///@param window_y
function open_backpack(argument0,argument1,argument2,argument3,argument4)
{
var bp_id____ = instance_create_depth(argument3,argument4,depth-1,inventory_backpack);
bp_id____.t_x = argument3;
bp_id____.t_y = argument4;
bp_id____.movement_key = ord(string(instance_number(inventory_backpack)));
bp_id____.max_width = argument0;
bp_id____.max_height = argument1;
bp_id____.bp_name = argument2;
bp_id____.owner = id;

	for(var i = 0; i < argument0; i++)
	{
		for(var ii = 0; ii < argument1; ii++)
		{
		bp_id____.in_bp_item_spr[i,ii] = -4;
		bp_id____.in_bp_item_img_ind[i,ii] = -4;
		bp_id____.in_bp_item_xsize[i,ii] = -4;
		bp_id____.in_bp_item_ysize[i,ii] = -4;
		bp_id____.in_bp_item_oxsize[i,ii] = -4;
		bp_id____.in_bp_item_oysize[i,ii] = -4;
		bp_id____.in_bp_item_angle[i,ii] = -4;
		bp_id____.in_bp_item_color[i,ii] = -4;
		bp_id____.in_bp_item_name[i,ii] = -4;
		bp_id____.in_bp_item_stacks[i,ii] = -4;
		bp_id____.in_bp_item_max_stacks[i,ii] = -4;
		bp_id____.in_bp_item_sname[i,ii] = -4;
		};
	};
	
return bp_id____;
}