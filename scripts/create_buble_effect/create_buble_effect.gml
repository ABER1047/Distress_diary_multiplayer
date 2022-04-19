// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation


///@param size
///@param direction
///@param image_angle
///@param speed
///@param des_speed
///@param speed_decrease
///@param col1
///@param col2
///@param sec_alpha
///@param col3
///@param light_type
///@param pass_block
///@param auto_depth

function create_buble_effect(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9,argument10,argument11,argument12,argument13,argument14,argument15)
{
	if optimizing_effect(2)
	{
	var ef_ins__ = instance_create_depth(argument10,argument11,argument12,obj_bubble_effect)
	ef_ins__.image_xscale = argument0
	ef_ins__.image_yscale = argument0
	ef_ins__.direction = argument1
	ef_ins__.image_angle = argument2
	ef_ins__.speed = argument3
	ef_ins__.des_speed = argument4
	ef_ins__.speed_dec = argument5
	ef_ins__.sec_col = argument6
	ef_ins__.image_blend = argument7
	ef_ins__.sec_alpha = argument8
	ef_ins__.thi_col = argument9
	ef_ins__.light_type = argument13
	ef_ins__.pass_block = argument14
	ef_ins__.auto_depth = argument15
	ef_ins__.pos_x = global.n_pos_x[code_m.my_ID];
	ef_ins__.pos_y = global.n_pos_y[code_m.my_ID];
	return ef_ins__;
	}
	else
	{
	return -4;
	}
}