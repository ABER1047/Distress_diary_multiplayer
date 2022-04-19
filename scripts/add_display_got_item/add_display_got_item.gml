// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation

///@param item_name
///@param sprite_index
///@param image_index
///@param stack_num
///@param xsize
///@param ysize
function add_display_got_item(argument0,argument1,argument2,argument3,argument4,argument5)
{
	for(var i = 10; i >= 0; i--)
	{
		if i < 10
		{
		global.disp_got_item[i+1] = global.disp_got_item[i]
		global.disp_got_item_spr[i+1] = global.disp_got_item_spr[i]
		global.disp_got_item_ind[i+1] = global.disp_got_item_ind[i]
		global.disp_got_item_alpha[i+1] = global.disp_got_item_alpha[i]
		global.disp_got_item_alpha_delay[i+1] = global.disp_got_item_alpha_delay[i]
		global.disp_got_item_num[i+1] = global.disp_got_item_num[i]
		}
		else
		{
		global.disp_got_item[10] = -4
		global.disp_got_item_spr[10] = -4
		global.disp_got_item_ind[10] = -4
		global.disp_got_item_alpha[10] = 0
		global.disp_got_item_num[10] = -4
		}
	}
global.disp_got_item_alpha_delay[9] = 0
global.disp_got_item[0] = argument0
global.disp_got_item_spr[0] = argument1
global.disp_got_item_ind[0] = argument2
global.disp_got_item_alpha[0] = 1
global.disp_got_item_alpha_delay[0] = 60
global.disp_got_item_num[0] = argument3
///////////////////////////////////////////////////////////////////////
//var t_spr_name = asset_get_index(string(argument1))
var t_spr_name = argument1
var average_weight = 0;
var total_weight = 0;
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
		
		if average_weight > 0
		{
		total_weight += abs(average_weight*argument3*argument4*argument5)
		}
global.weight += total_weight;
}