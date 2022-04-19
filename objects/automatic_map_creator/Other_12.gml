/// @description add room connection
// You can write your code in this editor
show_debug_message("added connection!")


for(var i = 0; i <= 30; i++)
{
	for(var ii = 0; ii <= 30; ii++)
	{
	room_connected_from_xx2[i,ii] = -4;
	room_connected_from_yy2[i,ii] = -4;
	}
}

//if room_type = 0
//{
for(var i = 0; i <= 30; i++)
{
	for(var ii = 0; ii <= 30; ii++)
	{
	var random_val = irandom_range(0,100)
	var total_con = room_connection_[i,ii]
		
		
		if (total_con > 0 && random_val <= total_con*900/total_room)
		{
		var total_repeat = total_con+floor((room_[i,ii]/max_r_connection))*2
		show_debug_message(total_repeat)
			
			while(true)
			{
			
			var random_dir_ = irandom_range(0,3)
			var xx_ = 0
			var yy_ = 0
				
				if (random_dir_ <= 1 && i <= main_room_val && ii = 20)
				{
				random_dir_ = choose(2,3)
				}
			
				if random_dir_ = 0
				{
				xx_ = -1;
					if i = 0
					{
					var xx_ = 0
					var yy_ = 0
					}
				}
				else if random_dir_ = 1
				{
				xx_ = 1;
					if i = 30
					{
					var xx_ = 0
					var yy_ = 0
					}
				}
				else if random_dir_ = 2
				{
				yy_ = -1;
					if ii = 0
					{
					var xx_ = 0
					var yy_ = 0
					}
				}
				else
				{
				yy_ = 1
					if ii = 30
					{
					var xx_ = 0
					var yy_ = 0
					}
				}
				
					
				//해당 자리에 룸이 빈경우 체크
				if (xx_ != 0 || yy_ != 0)
				{
					if room_[i+xx_,ii+yy_] != -4
					{
						if (room_connected_from_xx[i+xx_,ii+yy_] != i && room_connected_from_yy[i+xx_,ii+yy_] != ii)
						{
							if (room_connected_from_xx[i,ii] != i+xx_ && room_connected_from_yy[i,ii] != ii+yy_)
							{
							room_connected_from_xx2[i+xx_,ii+yy_] = i;
							room_connected_from_yy2[i+xx_,ii+yy_] = ii;
							break;
							}
						}
					}
				}
				else
				{
				total_repeat ++
				}
					
				if total_repeat < 0
				{
				break;
				}
			total_repeat --
			}
		show_debug_message("total_repeat : "+string(total_repeat))
		}
	}
}
//}


show_debug_message("room_type : "+string(room_type+random_get_seed()))

