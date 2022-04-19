/// @description Insert description here
// You can write your code in this editor
if (received = 0) 
{
buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, code_m.DATA.COMMAND);
buffer_write(command_buffer, buffer_u8, code_m.my_ID);
buffer_write(command_buffer, buffer_u8, code_m.COMM.SWORD_MASK);
buffer_write(command_buffer, buffer_string,string(global.nickname));
buffer_write(command_buffer, buffer_string,floor(x*10));
buffer_write(command_buffer, buffer_string,floor(y*10));
buffer_write(command_buffer, buffer_string,floor(image_xscale*100));
buffer_write(command_buffer, buffer_string,floor(image_yscale*100));
buffer_write(command_buffer, buffer_string,floor(image_angle*100));
buffer_write(command_buffer, buffer_string,floor(damage*100));
buffer_write(command_buffer, buffer_string,floor(knockback*100));
buffer_write(command_buffer, buffer_string,floor(freeze_time));
send_all(command_buffer);
}