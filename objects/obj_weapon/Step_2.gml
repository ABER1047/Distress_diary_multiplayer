/// @description Insert description here
// You can write your code in this editor
if setting_object = 1
{
	if instance_exists(owner_)
	{
		if (code_m.my_ID = owner_.playerID) 
		{
		buffer_seek(command_buffer, buffer_seek_start, 0);
		buffer_write(command_buffer, buffer_u8, code_m.DATA.COMMAND);
		buffer_write(command_buffer, buffer_u8, code_m.my_ID);
		buffer_write(command_buffer, buffer_u8, code_m.COMM.W_INFO);
		buffer_write(command_buffer, buffer_string,string(owner_.nickname));
		//buffer_write(command_buffer, buffer_string,floor(last_angle));
		//buffer_write(command_buffer, buffer_string,floor(y*10));
		buffer_write(command_buffer, buffer_string,floor(image_alpha*100));
		buffer_write(command_buffer, buffer_string,floor(image_angle*10));
		buffer_write(command_buffer, buffer_string,floor(image_index));
		buffer_write(command_buffer, buffer_string,floor(image_xscale*100));
		buffer_write(command_buffer, buffer_string,floor(image_yscale*100));
		buffer_write(command_buffer, buffer_string,string(image_blend));
		buffer_write(command_buffer, buffer_string,sprite_get_name(string(sprite_index)));
		buffer_write(command_buffer, buffer_string,string(depth));
		buffer_write(command_buffer, buffer_string,floor(swing_ef_alpha*100));
		buffer_write(command_buffer, buffer_string,floor(shaking_angle*10));
		buffer_write(command_buffer, buffer_string,floor(size*100));
		send_all(command_buffer);
		}
	}
}
