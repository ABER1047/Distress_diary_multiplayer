// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation

///@param x
///@param y
///@param img_ind
///@param xsize
///@param ysize
///@param for_multi
///@param non_use_func
///@param pos_x
///@param pos_y 
///@param automatic_loots
function create_loots(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9)
{
var xsize__ = argument3;
var ysize__ = argument4;
	//루트박스 사이즈 설정
	if argument9 = 1
	{
		var for_c_img = floor(argument2/2)
		if for_c_img = 0
		{
		xsize__ = 2
		ysize__ = 6
		}
		if for_c_img = 1
		{
		xsize__ = 3
		ysize__ = 4
		}
		if for_c_img = 2
		{
		xsize__ = 3
		ysize__ = 4
		}
		if for_c_img = 3
		{
		xsize__ = 2
		ysize__ = 3
		}
		if for_c_img = 4
		{
		xsize__ = 3
		ysize__ = 2
		}
		if for_c_img = 5
		{
		xsize__ = 3
		ysize__ = 2
		}
		if for_c_img = 6
		{
		xsize__ = 3
		ysize__ = 2
		}
		if for_c_img = 7
		{
		xsize__ = 5;
		ysize__ = 2;
		}
		if for_c_img = 8
		{
		xsize__ = 3;
		ysize__ = 2;
		}
		if for_c_img = 9
		{
		xsize__ = 3;
		ysize__ = 7;
		}
		if for_c_img = 12 //10,11은 물병
		{
		xsize__ = 5;
		ysize__ = 4;
		}
		if for_c_img = 13
		{
		xsize__ = 3;
		ysize__ = 3;
		}
	}
	
var obj_wall = instance_create_depth(argument0,argument1,999,obj_loots)
obj_wall.origin_img_ind = argument2
obj_wall.item_name = "Loot"
obj_wall.xsize = xsize__;
obj_wall.ysize = ysize__;
if (argument2 = 2 || argument2 = 4)
{
obj_wall.sfx_type = 1
}
else
{
obj_wall.sfx_type = 0
}
obj_wall.pos_x = argument7;
obj_wall.pos_y = argument8;
obj_wall.automatic_loots = argument9;


	for(var i = 0; i < xsize__; i++)
	{
		for(var ii = 0; ii < ysize__; ii++)
		{
		obj_wall.in_bp_item_spr[i,ii] = -4;
		obj_wall.in_bp_item_img_ind[i,ii] = -4;
		obj_wall.in_bp_item_xsize[i,ii] = -4;
		obj_wall.in_bp_item_ysize[i,ii] = -4;
		obj_wall.in_bp_item_oxsize[i,ii] = -4;
		obj_wall.in_bp_item_oysize[i,ii] = -4;
		obj_wall.in_bp_item_angle[i,ii] = -4;
		obj_wall.in_bp_item_color[i,ii] = -4;
		obj_wall.in_bp_item_name[i,ii] = -4;
		obj_wall.in_bp_item_stacks[i,ii] = -4;
		obj_wall.in_bp_item_max_stacks[i,ii] = -4;
		obj_wall.in_bp_item_sname[i,ii] = -4;
		}
	}
	
	if argument5 = 1
	{
	buffer_seek(command_buffer, buffer_seek_start, 0);
	buffer_write(command_buffer, buffer_u8, DATA.COMMAND);
	buffer_write(command_buffer, buffer_u8, code_m.my_ID);
	buffer_write(command_buffer, buffer_u8, COMM.LOOT_CRE);
	buffer_write(command_buffer, buffer_string,string(global.nickname));
	buffer_write(command_buffer, buffer_string,floor(argument0*10));
	buffer_write(command_buffer, buffer_string,floor(argument1*10));
	buffer_write(command_buffer, buffer_string,floor(argument2));
	buffer_write(command_buffer, buffer_string,floor(xsize__));
	buffer_write(command_buffer, buffer_string,floor(ysize__));
	buffer_write(command_buffer, buffer_string,floor(argument6));
	buffer_write(command_buffer, buffer_string,floor(argument7));
	buffer_write(command_buffer, buffer_string,floor(argument8));
	buffer_write(command_buffer, buffer_string,floor(argument9));
	send_all(command_buffer);
	}
return obj_wall;
}