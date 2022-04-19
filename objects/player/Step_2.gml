///for multiplayer
if (code_m.my_ID = playerID) 
{
buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, code_m.DATA.COMMAND);
buffer_write(command_buffer, buffer_u8, code_m.my_ID);
buffer_write(command_buffer, buffer_u8, code_m.COMM.P_INFO);
buffer_write(command_buffer, buffer_string,string(nickname));
buffer_write(command_buffer, buffer_string,floor(last_angle));
buffer_write(command_buffer, buffer_string,floor(z*10));
buffer_write(command_buffer, buffer_string,floor(wounded*10));
buffer_write(command_buffer, buffer_string,floor(x*10));
buffer_write(command_buffer, buffer_string,floor(y*10));
buffer_write(command_buffer, buffer_string,floor(image_alpha*100));
buffer_write(command_buffer, buffer_string,floor(image_angle*10));
buffer_write(command_buffer, buffer_string,floor(image_index));
buffer_write(command_buffer, buffer_string,floor(image_xscale*100));
buffer_write(command_buffer, buffer_string,floor(image_yscale*100));
buffer_write(command_buffer, buffer_string,string(image_blend));
buffer_write(command_buffer, buffer_string,string(sprite_index));
buffer_write(command_buffer, buffer_string,string(depth));
if global.flash_light_on > 0
{
buffer_write(command_buffer, buffer_string,floor(light_dir*10));
buffer_write(command_buffer, buffer_string,floor(last_angle));
buffer_write(command_buffer, buffer_string,floor(_light_.image_angle*10));
buffer_write(command_buffer, buffer_string,floor(knocked_out));
buffer_write(command_buffer, buffer_string,floor(can_revive_time));
}
else
{
buffer_write(command_buffer, buffer_string,-99);
}
send_all(command_buffer);


	if (b_arrow_set != n_arrow_set)
	{
	b_arrow_set = n_arrow_set;
	buffer_seek(command_buffer, buffer_seek_start, 0);
	buffer_write(command_buffer, buffer_u8, code_m.DATA.COMMAND);
	buffer_write(command_buffer, buffer_u8, code_m.my_ID);
	buffer_write(command_buffer, buffer_u8, code_m.COMM.DMGED_INFO);
	buffer_write(command_buffer, buffer_string,string(nickname));
	for(var i = 0; i <= 25; i++)
	{
	buffer_write(command_buffer, buffer_string,string(arrow_img_ind[i]));
	buffer_write(command_buffer, buffer_string,floor(arrow_xx[i]*10));
	buffer_write(command_buffer, buffer_string,floor(arrow_yy[i]*10));
	buffer_write(command_buffer, buffer_string,floor(arrow_angle[i]*10));
	}
	send_all(command_buffer);
	}
}

