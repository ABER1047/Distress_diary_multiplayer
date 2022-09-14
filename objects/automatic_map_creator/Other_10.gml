/// @description create main room (setting)

//if room_type = 0
//{
//메인 룸 생성
map_seed = random_get_seed()
room_type = irandom_range(0,3)
global.start_n_pos_x = 0;
global.start_n_pos_y = 20;
if room_type = 1
{
global.start_n_pos_x = 20;
global.start_n_pos_y = 0;
}
if room_type = 2
{
global.start_n_pos_x = 30;
global.start_n_pos_y = 20;
}
if room_type = 3
{
global.start_n_pos_x = 20;
global.start_n_pos_y = 30;
}

global.n_pos_x[code_m.my_ID] = global.start_n_pos_x;
global.n_pos_y[code_m.my_ID] = global.start_n_pos_y;


max_r_connection = irandom_range(2,10)
for(var i = 0; i <= 30; i++)
{
	for(var ii = 0; ii <= 30; ii++)
	{
	room_[i,ii] = -4;
	room_connected_from_xx[i,ii] = -4;
	room_connected_from_yy[i,ii] = -4;
	room_connected_from_xx2[i,ii] = -4;
	room_connected_from_yy2[i,ii] = -4;
	room_connection_[i,ii] = 0
	
	//dependent value
	room_xsize[i,ii] = irandom_range(3,12);
	room_ysize[i,ii] = irandom_range(3,12);
	}
}
main_room_val = irandom_range(2,13);
	if (room_type = 0 || room_type = 1)
	{
		for(var i = 0; i <= main_room_val; i++)
		{
		var startx = i
		var starty = 20
		var t_x = i+1
		var t_y = 20
		
			if room_type = 1
			{
			t_x = 20
			t_y = i+1
			startx = 20
			starty = i
			}
			
		room_[startx,starty] = 0;
		room_connected_from_xx[startx,starty] = t_x;
		room_connected_from_yy[startx,starty] = t_y;
		//room_connected_from_xx[startx,starty] = startx;
		//room_connected_from_yy[startx,starty] = starty;
		}
	}
	else
	{
		for(var i = 0; i <= main_room_val; i++)
		{
		var startx = 30-i
		var starty = 20
		var t_x = 30-i-1
		var t_y = 20
		
			if room_type = 3
			{
			t_x = 20
			t_y = 30-i-1
			startx = 20
			starty = 30-i
			}
			
		room_[startx,starty] = 0;
		room_connected_from_xx[startx,starty] = t_x;
		room_connected_from_yy[startx,starty] = t_y;
		//room_connected_from_xx[startx,starty] = startx;
		//room_connected_from_yy[startx,starty] = starty;
		}
	}
	
//방 생성 코드 재귀
event_user(1);
//}


