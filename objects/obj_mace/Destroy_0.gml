/// @description Insert description here
// You can write your code in this editor
buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, code_m.DATA.MACE_STATE);
buffer_write(command_buffer, buffer_u8, code_m.my_ID);
buffer_write(command_buffer, buffer_string,floor(-100));
buffer_write(command_buffer, buffer_string,floor(0));
buffer_write(command_buffer, buffer_string,floor(0));
buffer_write(command_buffer, buffer_string,floor(0));
buffer_write(command_buffer, buffer_string,string(0));
buffer_write(command_buffer, buffer_string,floor(personal_id));
send_all(command_buffer);