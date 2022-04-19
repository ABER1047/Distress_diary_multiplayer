// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation
///@param target
function set_item_weight(argument0)
{
global.weight = 0;
var total_weight = 0;
var average_weight = 0;
var target_ = argument0;

	if argument0.bp_ != noone && instance_exists(argument0.bp_)
	{
	target_ = argument0.bp_;
	}
	else
	{
	return -4;
	}

	for(var i = 0; i < (target_.max_width); i++)
	{
		for(var ii = 0; ii < (target_.max_height); ii++)
		{
		var _xx = target_.in_bp_item_oxsize[i,ii]
		var _yy = target_.in_bp_item_oysize[i,ii]
		var t_spr_name = asset_get_index(string(target_.in_bp_item_spr[i,ii]))
		
			if t_spr_name = spr_drink
			{
			average_weight = 5
			}
						
			if t_spr_name = spr_backpack
			{
			average_weight = 10
			}
		
			if t_spr_name = spr_comp
			{
			average_weight = 10
			}
	
			if t_spr_name = spr_healings
			{
			average_weight = 1
			}
	
			if t_spr_name = spr_foods
			{
			average_weight = 2
			}
	
			if t_spr_name = spr_stackables
			{
			average_weight = 1
			}
	
			if (t_spr_name = spr_wall_mask || t_spr_name = -4)
			{
			average_weight = 0
			}
	
			if average_weight > 0 && _xx > 0 && _yy > 0
			{
			total_weight += abs(average_weight*target_.in_bp_item_stacks[i,ii]*_xx*_yy)
			}
		}
	}
global.weight = total_weight;
}