/// @description Insert description here
// You can write your code in this editor
instance_destroy(obj_mask_)


buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, DATA.INS_DESTROY);
buffer_write(command_buffer, buffer_u8, code_m.my_ID);
buffer_write(command_buffer, buffer_string,floor(x*10));
buffer_write(command_buffer, buffer_string,floor(y*10));
buffer_write(command_buffer, buffer_string,string(object_index));
send_all(command_buffer);