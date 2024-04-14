/// @description Insert description here
// You can write your code in this editor
var xx = mouse_x
var yy = mouse_y
if (code_m.my_ID = playerID) && (position_meeting(floor(xx),floor(yy)+16,floor_tile_here) || place_meeting(floor(xx),floor(yy),pingable_object))
{
instance_create_depth(floor(xx),floor(yy),0,ping_effect)


buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, DATA.COMMAND);
buffer_write(command_buffer, buffer_u8, code_m.my_ID);
buffer_write(command_buffer, buffer_u8, COMM.PING_HERE);
buffer_write(command_buffer, buffer_string,string(nickname));
buffer_write(command_buffer, buffer_string,floor(xx));
buffer_write(command_buffer, buffer_string,floor(yy));
send_all(command_buffer);
}