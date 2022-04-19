// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param dir
///@param speed
///@param ammo_kind
///@param owner
///@param for_multi
///@param pos_x
///@param pos_y
function create_arrow(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8)
{
var _arrow = instance_create_depth(argument0,argument1,depth-1,obj_arrow);
_arrow.image_angle = argument2-45;
_arrow.direction = argument2;
_arrow.arrow_speed = argument3;
_arrow.image_index = real(argument4)*2;
_arrow.owner = argument5;
_arrow.pos_x = argument7;
_arrow.pos_y = argument8;

	if argument6 = 1
	{
	buffer_seek(command_buffer, buffer_seek_start, 0);
	buffer_write(command_buffer, buffer_u8, code_m.DATA.COMMAND);
	buffer_write(command_buffer, buffer_u8, code_m.my_ID);
	buffer_write(command_buffer, buffer_u8, code_m.COMM.ARROW_CRE);
	buffer_write(command_buffer, buffer_string,string(owner_.nickname));
	buffer_write(command_buffer, buffer_string,floor(argument4));
	buffer_write(command_buffer, buffer_string,floor(argument0*10));
	buffer_write(command_buffer, buffer_string,floor(argument1*10));
	buffer_write(command_buffer, buffer_string,floor(argument2*10));
	buffer_write(command_buffer, buffer_string,floor(argument3*10));
	buffer_write(command_buffer, buffer_string,floor(argument7));
	buffer_write(command_buffer, buffer_string,floor(argument8));
	send_all(command_buffer);
	}
return _arrow;
}