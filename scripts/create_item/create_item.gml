// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param spr
///@param img
///@param dir
///@param sp
///@param zsp
///@param item_name
///@param xsize
///@param ysize
///@param stack_num
///@param max_stack_n
///@param is_backpack
///@param pos_x
///@param pos_y
///@param short_name
function create_item(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9,argument10,argument11,argument12,argument13,argument14,argument15)
{
var _st_bl = instance_create_depth(argument0,argument1,999,obj_item);
_st_bl.sprite_index = argument2;
_st_bl.image_index = argument3;
_st_bl.direction = argument4;
_st_bl.speed = argument5;
_st_bl.zspeed = argument6;
_st_bl.alarm[11] = 5;
_st_bl.item_name = argument7;
_st_bl.xsize = argument8;
_st_bl.ysize = argument9;
_st_bl.stack_num = argument10;
_st_bl.max_stack_num = argument11;
_st_bl.pos_x = argument13;
_st_bl.pos_y = argument14;
_st_bl.short_name = argument15;
	if argument12 = 1
	{
	_st_bl.check_empty = 0
	}
	else
	{
	_st_bl.check_empty = 1
	_st_bl.max_width = 0
	_st_bl.max_height = 0
	}
return _st_bl;
}