/// @description Insert description here
// You can write your code in this editor
buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, DATA.REFRESH);
buffer_write(command_buffer, buffer_u8, code_m.my_ID);
buffer_write(command_buffer, buffer_string,floor(x*10));
buffer_write(command_buffer, buffer_string,floor(y*10));
buffer_write(command_buffer, buffer_string,string(object_index));
buffer_write(command_buffer, buffer_string,floor(received));
buffer_write(command_buffer, buffer_string,floor(image_index*100));
buffer_write(command_buffer, buffer_string,floor(image_alpha*100));
buffer_write(command_buffer, buffer_string,floor(image_xscale*100));
buffer_write(command_buffer, buffer_string,floor(image_yscale*100));
buffer_write(command_buffer, buffer_string,floor(image_angle*10));
buffer_write(command_buffer, buffer_string,1); //refreshable values num
buffer_write(command_buffer, buffer_string,string("hp")); //refreshable values name
buffer_write(command_buffer, buffer_string,floor(hp*100)); //refreshable values
show_debug_message(floor(hp*100))
send_all(command_buffer);
