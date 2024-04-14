// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation


///@param x
///@param y
///@param z
///@param alpha1
///@param alpha2
///@param color_1
///@param color_2
///@param vspeed
///@param hspeed
///@param for_multi
function create_spark_effect(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9)
{
	if optimizing_effect(2)
	{
	var effect_ = instance_create_depth(argument0,argument1,0,spark_effect);
	effect_.z = argument2;
	effect_.alpha = argument3;
	effect_.alpha2 = argument4;
	effect_.color_1 = argument5;
	effect_.color_2 = argument6;
	effect_.vspeed = argument7;
	effect_.hspeed = argument8;
	return effect_;
	}
	else
	{
	return -4;
	}
	
	
	if argument9 = 1
	{
	buffer_seek(command_buffer, buffer_seek_start, 0);
	buffer_write(command_buffer, buffer_u8, DATA.COMMAND);
	buffer_write(command_buffer, buffer_u8, code_m.my_ID);
	buffer_write(command_buffer, buffer_u8, COMM.SPARK_CRE);
	buffer_write(command_buffer, buffer_string,string(global.nickname));
	buffer_write(command_buffer, buffer_string,floor(argument0*10));
	buffer_write(command_buffer, buffer_string,floor(argument1*10));
	buffer_write(command_buffer, buffer_string,floor(argument2*100));
	buffer_write(command_buffer, buffer_string,floor(argument3*10));
	buffer_write(command_buffer, buffer_string,floor(argument4*10));
	buffer_write(command_buffer, buffer_string,argument5);
	buffer_write(command_buffer, buffer_string,argument6);
	buffer_write(command_buffer, buffer_string,floor(argument7*100));
	buffer_write(command_buffer, buffer_string,floor(argument8*100));
	send_all(command_buffer);
	}
}