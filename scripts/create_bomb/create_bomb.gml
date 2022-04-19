// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param bomb_max_time
///@param direction
///@param speed
///@param non_bomb
///@param explo_size
///@param zspeed
///@param alarm
///@param for_multi
///@param pos_x
///@param pos_y
function create_bomb(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9,argument10,argument11)
{
var _st_bl = instance_create_depth(argument0,argument1,999,obj_bomb)
_st_bl.bomb_max_time = argument2//20
_st_bl.direction = argument3
_st_bl.speed = argument4
_st_bl.non_bomb = argument5
_st_bl.explo_size = argument6
_st_bl.zspeed = argument7
_st_bl.alarm[11] = argument8
_st_bl.pos_x = argument10;
_st_bl.pos_y = argument11;

	if argument9 = 1
	{
	buffer_seek(command_buffer, buffer_seek_start, 0);
	buffer_write(command_buffer, buffer_u8, code_m.DATA.COMMAND);
	buffer_write(command_buffer, buffer_u8, code_m.my_ID);
	buffer_write(command_buffer, buffer_u8, code_m.COMM.BOMB_CRE);
	buffer_write(command_buffer, buffer_string,string(global.nickname));
	buffer_write(command_buffer, buffer_string,floor(argument0*10));
	buffer_write(command_buffer, buffer_string,floor(argument1*10));
	buffer_write(command_buffer, buffer_string,floor(argument2*10));
	buffer_write(command_buffer, buffer_string,floor(argument3*10));
	buffer_write(command_buffer, buffer_string,floor(argument4*10));
	buffer_write(command_buffer, buffer_string,floor(argument5));
	buffer_write(command_buffer, buffer_string,floor(argument6*10));
	buffer_write(command_buffer, buffer_string,floor(argument7*10));
	buffer_write(command_buffer, buffer_string,floor(argument8));
	buffer_write(command_buffer, buffer_string,floor(argument10));
	buffer_write(command_buffer, buffer_string,floor(argument11));
	send_all(command_buffer);
	}
return _st_bl;
}