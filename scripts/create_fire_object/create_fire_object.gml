// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param z
///@param depth
///@param duration
///@param size
///@param for_multi
///@param pos_x
///@param pos_y
function create_fire_object(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8)
{
var ins__ = instance_create_depth(argument0,argument1,argument3,fire_object);
ins__.z = argument2;
ins__.duration = argument4;
ins__.image_xscale = argument5;
ins__.image_yscale = argument5;
ins__.image_yscale = argument5;
ins__.pos_x = argument7;
ins__.pos_y = argument8;

	if argument6 = 1
	{
	buffer_seek(command_buffer, buffer_seek_start, 0);
	buffer_write(command_buffer, buffer_u8, DATA.COMMAND);
	buffer_write(command_buffer, buffer_u8, code_m.my_ID);
	buffer_write(command_buffer, buffer_u8, COMM.FIRE_CRE);
	buffer_write(command_buffer, buffer_string,string(global.nickname));
	buffer_write(command_buffer, buffer_string,floor(argument0*10));
	buffer_write(command_buffer, buffer_string,floor(argument1*10));
	buffer_write(command_buffer, buffer_string,floor(argument2*10));
	buffer_write(command_buffer, buffer_string,floor(argument3));
	buffer_write(command_buffer, buffer_string,floor(argument4));
	buffer_write(command_buffer, buffer_string,floor(argument5*100));
	buffer_write(command_buffer, buffer_string,floor(argument7));
	buffer_write(command_buffer, buffer_string,floor(argument8));
	send_all(command_buffer);
	}
return ins__;
}