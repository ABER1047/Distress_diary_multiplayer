/// @description Insert description here
// You can write your code in this editor
if for_multi = 1
{
play_sfx(hit_sfx,0,global.sfx_volume*0.2)

buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, code_m.DATA.COMMAND);
buffer_write(command_buffer, buffer_u8, code_m.my_ID);
buffer_write(command_buffer, buffer_u8, code_m.COMM.BLOOD_EFFECT);
buffer_write(command_buffer, buffer_string,string(global.nickname));
buffer_write(command_buffer, buffer_string,floor(x*10));
buffer_write(command_buffer, buffer_string,floor(y*10));
buffer_write(command_buffer, buffer_string,floor(rad/4*125));
buffer_write(command_buffer, buffer_string,string(bg_color));
buffer_write(command_buffer, buffer_string,floor(image_alpha*100));
send_all(command_buffer);
}
