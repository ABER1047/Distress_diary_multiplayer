/// @description Insert description here
// You can write your code in this editor
var my_p = get_my_p(global.nickname,0)

var ins_pl = instance_place(x,y,my_p)
if (global.can_move_room = 1 && ins_pl >= 0)
{
var t_obj = automatic_map_creator
var xx = 0
var yy = -1
var check_connected = 0
var check_array_range = 1

	if tp_to = 1
	{
	xx = 1
	yy = 0
	}
	if tp_to = 2
	{
	xx = 0
	yy = 1
	}
	if tp_to = 3
	{
	xx = -1
	yy = 0
	}
	
	var x_pos = global.n_pos_x[code_m.my_ID]
	var y_pos = global.n_pos_y[code_m.my_ID]
	
	var x_pos_c = x_pos+xx
	var y_pos_c = y_pos+yy
	
	if (x_pos_c > 30 || x_pos_c < 0 || y_pos_c > 30 || y_pos_c < 0)
	{
	check_array_range = 0
	}
	else
	{
		if (t_obj.room_connected_from_xx[x_pos,y_pos] = x_pos_c && t_obj.room_connected_from_yy[x_pos,y_pos] = y_pos_c)
		{
		check_connected = 1
		}
		if (t_obj.room_connected_from_xx[x_pos_c,y_pos_c] = x_pos && t_obj.room_connected_from_yy[x_pos_c,y_pos_c] = y_pos)
		{
		check_connected = 1
		}
		if (t_obj.room_connected_from_xx2[x_pos,y_pos] = x_pos_c && t_obj.room_connected_from_yy2[x_pos,y_pos] = y_pos_c)
		{
		check_connected = 1
		}
		if (t_obj.room_connected_from_xx2[x_pos_c,y_pos_c] = x_pos && t_obj.room_connected_from_yy2[x_pos_c,y_pos_c] = y_pos)
		{
		check_connected = 1
		}
	}
	
	if (check_array_range = 1 && t_obj.room_[x_pos_c,y_pos_c] >= 0 && check_connected = 1)
	{
	global.can_move_room = 0
	global.refresh_pos_for_multi = 1
	
	var check_val = tp_to+2
		if check_val > 3
		{
		check_val -= 4
		}
	
	global.tp_portal = check_val;
	
	automatic_map_creator.m_map_alpha = 20000
	global.blackout_screen = 1


	global.n_pos_x[code_m.my_ID] += xx
	global.n_pos_y[code_m.my_ID] += yy
	}
}
