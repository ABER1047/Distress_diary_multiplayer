// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param image_scale
///@param vspeed
///@param hspeed
///@param zspeed
///@param for_multi
///@param pos_x
///@param pos_y
function create_glowstick(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8)
{
var _st_bl = instance_create_depth(argument0,argument1,999,obj_glowstick);
_st_bl.image_xscale = argument2;
_st_bl.image_yscale = argument2;
_st_bl.vspeed = argument3;
_st_bl.hspeed = argument4;
_st_bl.zspeed = argument5;
_st_bl.pos_x = argument7;
_st_bl.pos_y = argument8;

	if argument6 = 1
	{
	buffer_seek(command_buffer, buffer_seek_start, 0);
	buffer_write(command_buffer, buffer_u8, DATA.COMMAND);
	buffer_write(command_buffer, buffer_u8, code_m.my_ID);
	buffer_write(command_buffer, buffer_u8, COMM.GSTICK_CRE);
	buffer_write(command_buffer, buffer_string,string(global.nickname));
	buffer_write(command_buffer, buffer_string,floor(argument0*10));
	buffer_write(command_buffer, buffer_string,floor(argument1*10));
	buffer_write(command_buffer, buffer_string,floor(argument2*100));
	buffer_write(command_buffer, buffer_string,floor(argument3*10));
	buffer_write(command_buffer, buffer_string,floor(argument4*10));
	buffer_write(command_buffer, buffer_string,floor(argument5*10));
	buffer_write(command_buffer, buffer_string,floor(argument7));
	buffer_write(command_buffer, buffer_string,floor(argument8));
	send_all(command_buffer);
	}
return _st_bl;
}