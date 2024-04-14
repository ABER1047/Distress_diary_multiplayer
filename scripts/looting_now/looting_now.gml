// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function looting_now(argument0)
{
buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, DATA.COMMAND);
buffer_write(command_buffer, buffer_u8, code_m.my_ID);
buffer_write(command_buffer, buffer_u8, COMM.LOOT_LOOTING);
buffer_write(command_buffer, buffer_string,string(global.nickname));
buffer_write(command_buffer, buffer_string,floor(x*10));
buffer_write(command_buffer, buffer_string,floor(y*10));
buffer_write(command_buffer, buffer_string,floor(argument0));

	for(var i = 0; i < xsize; i++)
	{
		for(var ii = 0; ii < ysize; ii++)
		{
		var info1 = in_bp_item_spr[i,ii];
		var info2 = in_bp_item_img_ind[i,ii];
		var info3 = in_bp_item_xsize[i,ii];
		var info4 = in_bp_item_ysize[i,ii];
		var info5 = in_bp_item_oxsize[i,ii];
		var info6 = in_bp_item_oysize[i,ii];
		var info7 = in_bp_item_angle[i,ii];
		var info8 = in_bp_item_color[i,ii];
		var info9 = in_bp_item_name[i,ii];
		var info10 = in_bp_item_stacks[i,ii];
		var info11 = in_bp_item_max_stacks[i,ii];
		var info12 = in_bp_item_sname[i,ii];


		buffer_write(command_buffer, buffer_string,string(info1));
		buffer_write(command_buffer, buffer_string,floor(info2));
		buffer_write(command_buffer, buffer_string,floor(info3));
		buffer_write(command_buffer, buffer_string,floor(info4));
		buffer_write(command_buffer, buffer_string,floor(info5));
		buffer_write(command_buffer, buffer_string,floor(info6));
		buffer_write(command_buffer, buffer_string,floor(info7));
		buffer_write(command_buffer, buffer_string,string(info8));
		buffer_write(command_buffer, buffer_string,string(info9));
		buffer_write(command_buffer, buffer_string,floor(info10));
		buffer_write(command_buffer, buffer_string,floor(info11));
		buffer_write(command_buffer, buffer_string,string(info12));
		}
	}
send_all(command_buffer);
}