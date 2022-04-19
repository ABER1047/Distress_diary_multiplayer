/// @description create sub room
// You can write your code in this editor

show_debug_message("give more chance to create connected room")


//메인 룸 생성
var total_repeated = 0
total_room = 0
	
//방 생성 코드 재귀
var cre_more_room = true;
var total_repeat_sub_r_cre = 1
if (room_type = 0)
{
	while(cre_more_room)
	{
		//서브 룸 생성
		for(var i = 0; i <= 30; i++)
		{
			for(var ii = 0; ii <= 30; ii++)
			{
			var __cal_val = room_[i,ii]
			
			if __cal_val = 0
			{
			__cal_val = 1
			}
			
				if __cal_val != -4
				{
				var random_val = irandom_range(0,100)
					if random_val <= (80/__cal_val)
					{
					//무한 루프 방지
					var check_too_many_cases = 0
					
						while(true)
						{
						var xx = 0;
						var yy = 0;
						//룸 추가할 자리 선정(랜덤)
						var random_dir_r_cre = irandom_range(0,3)
							if random_dir_r_cre = 0
							{
							xx = 1
								if i = 30
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							if random_dir_r_cre = 1
							{
							xx = -1
								if i = 0
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							if random_dir_r_cre = 2
							{
							yy = 1
								if ii = 30
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							if random_dir_r_cre = 3
							{
							yy = -1
								if ii = 0
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							
							//해당 자리에 룸이 없는 경우
							if room_[i+xx,ii+yy] = -4
							{
							total_room ++
							break;
							}
							
						check_too_many_cases ++
							if check_too_many_cases > 10
							{
							xx = 0;
							yy = 0;
							break;
							}
						}
						
						
						
						//이전 룸 벨류값 (방 생성 순서 구분)
						var b_room_val = room_[i,ii]+1
						//방 벨류값이 최대 방 연결 갯수 제한 수 보다 적은 경우만 방 생성
						if b_room_val <= max_r_connection
						{
							if (xx != 0 || yy != 0)
							{
							room_connection_[i,ii]++;
							room_[i+xx,ii+yy] = b_room_val;
							room_connected_from_xx[i+xx,ii+yy] = i;
							room_connected_from_yy[i+xx,ii+yy] = ii;
								//20% 확률로 방 생성 코드 재귀
								var random_val = irandom_range(0,100)
								if (random_val > 100/(total_repeat_sub_r_cre))
								{
								cre_more_room = false
								}
								else
								{
								total_repeat_sub_r_cre += 1/(max_r_connection*main_room_val)
								total_repeated ++
								}
							}
							else
							{
							total_repeated ++
							}
						break;
						break;
						}
						else
						{
						cre_more_room = false
						break;
						break;
						}
					}
				}
			}
		}
	}
}


if (room_type = 1)
{
	while(cre_more_room)
	{
		//서브 룸 생성
		for(var ii = 0; ii <= 30; ii++)
		{
			for(var i = 0; i <= 30; i++)
			{
			var __cal_val = room_[i,ii]
			
			if __cal_val = 0
			{
			__cal_val = 1
			}
			
				if __cal_val != -4
				{
				var random_val = irandom_range(0,100)
					if random_val <= (80/__cal_val)
					{
					//무한 루프 방지
					var check_too_many_cases = 0
					
						while(true)
						{
						var xx = 0;
						var yy = 0;
						//룸 추가할 자리 선정(랜덤)
						var random_dir_r_cre = irandom_range(0,3)
							if random_dir_r_cre = 0
							{
							xx = 1
								if i = 30
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							if random_dir_r_cre = 1
							{
							xx = -1
								if i = 0
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							if random_dir_r_cre = 2
							{
							yy = 1
								if ii = 30
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							if random_dir_r_cre = 3
							{
							yy = -1
								if ii = 0
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							
							//해당 자리에 룸이 없는 경우
							if room_[i+xx,ii+yy] = -4
							{
							total_room ++
							break;
							}
							
						check_too_many_cases ++
							if check_too_many_cases > 10
							{
							xx = 0;
							yy = 0;
							break;
							}
						}
						
						
						
						//이전 룸 벨류값 (방 생성 순서 구분)
						var b_room_val = room_[i,ii]+1
						//방 벨류값이 최대 방 연결 갯수 제한 수 보다 적은 경우만 방 생성
						if b_room_val <= max_r_connection
						{
							if (xx != 0 || yy != 0)
							{
							room_connection_[i,ii]++;
							room_[i+xx,ii+yy] = b_room_val;
							room_connected_from_xx[i+xx,ii+yy] = i;
							room_connected_from_yy[i+xx,ii+yy] = ii;
								//20% 확률로 방 생성 코드 재귀
								var random_val = irandom_range(0,100)
								if (random_val > 100/(total_repeat_sub_r_cre))
								{
								cre_more_room = false
								}
								else
								{
								total_repeat_sub_r_cre += 1/(max_r_connection*main_room_val)
								total_repeated ++
								}
							}
							else
							{
							total_repeated ++
							}
						break;
						break;
						}
						else
						{
						cre_more_room = false
						break;
						break;
						}
					}
				}
			}
		}
	}
}


if (room_type = 2)
{
	while(cre_more_room)
	{
		//서브 룸 생성
		for(var i = 30; i > 0; i--)
		{
			for(var ii = 30; ii > 0; ii--)
			{
			var __cal_val = room_[i,ii]
			
			if __cal_val = 0
			{
			__cal_val = 1
			}
			
				if __cal_val != -4
				{
				var random_val = irandom_range(0,100)
					if random_val <= (80/__cal_val)
					{
					//무한 루프 방지
					var check_too_many_cases = 0
					
						while(true)
						{
						var xx = 0;
						var yy = 0;
						//룸 추가할 자리 선정(랜덤)
						var random_dir_r_cre = irandom_range(0,3)
							if random_dir_r_cre = 0
							{
							xx = 1
								if i = 30
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							if random_dir_r_cre = 1
							{
							xx = -1
								if i = 0
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							if random_dir_r_cre = 2
							{
							yy = 1
								if ii = 30
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							if random_dir_r_cre = 3
							{
							yy = -1
								if ii = 0
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							
							//해당 자리에 룸이 없는 경우
							if room_[i+xx,ii+yy] = -4
							{
							total_room ++
							break;
							}
							
						check_too_many_cases ++
							if check_too_many_cases > 10
							{
							xx = 0;
							yy = 0;
							break;
							}
						}
						
						
						
						//이전 룸 벨류값 (방 생성 순서 구분)
						var b_room_val = room_[i,ii]+1
						//방 벨류값이 최대 방 연결 갯수 제한 수 보다 적은 경우만 방 생성
						if b_room_val <= max_r_connection
						{
							if (xx != 0 || yy != 0)
							{
							room_connection_[i,ii]++;
							room_[i+xx,ii+yy] = b_room_val;
							room_connected_from_xx[i+xx,ii+yy] = i;
							room_connected_from_yy[i+xx,ii+yy] = ii;
								//20% 확률로 방 생성 코드 재귀
								var random_val = irandom_range(0,100)
								if (random_val > 100/(total_repeat_sub_r_cre))
								{
								cre_more_room = false
								}
								else
								{
								total_repeat_sub_r_cre += 1/(max_r_connection*main_room_val)
								total_repeated ++
								}
							}
							else
							{
							total_repeated ++
							}
						break;
						break;
						}
						else
						{
						cre_more_room = false
						break;
						break;
						}
					}
				}
			}
		}
	}
}


if (room_type = 3)
{
	while(cre_more_room)
	{
		//서브 룸 생성
		for(var ii = 30; ii > 0; ii--)
		{
			for(var i = 30; i > 0; i--)
			{
			var __cal_val = room_[i,ii]
			
			if __cal_val = 0
			{
			__cal_val = 1
			}
			
				if __cal_val != -4
				{
				var random_val = irandom_range(0,100)
					if random_val <= (80/__cal_val)
					{
					//무한 루프 방지
					var check_too_many_cases = 0
					
						while(true)
						{
						var xx = 0;
						var yy = 0;
						//룸 추가할 자리 선정(랜덤)
						var random_dir_r_cre = irandom_range(0,3)
							if random_dir_r_cre = 0
							{
							xx = 1
								if i = 30
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							if random_dir_r_cre = 1
							{
							xx = -1
								if i = 0
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							if random_dir_r_cre = 2
							{
							yy = 1
								if ii = 30
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							if random_dir_r_cre = 3
							{
							yy = -1
								if ii = 0
								{
								check_too_many_cases --
								xx = 0;
								yy = 0;
								}
							}
							
							//해당 자리에 룸이 없는 경우
							if room_[i+xx,ii+yy] = -4
							{
							total_room ++
							break;
							}
							
						check_too_many_cases ++
							if check_too_many_cases > 10
							{
							xx = 0;
							yy = 0;
							break;
							}
						}
						
						
						
						//이전 룸 벨류값 (방 생성 순서 구분)
						var b_room_val = room_[i,ii]+1
						//방 벨류값이 최대 방 연결 갯수 제한 수 보다 적은 경우만 방 생성
						if b_room_val <= max_r_connection
						{
							if (xx != 0 || yy != 0)
							{
							room_connection_[i,ii]++;
							room_[i+xx,ii+yy] = b_room_val;
							room_connected_from_xx[i+xx,ii+yy] = i;
							room_connected_from_yy[i+xx,ii+yy] = ii;
								//20% 확률로 방 생성 코드 재귀
								var random_val = irandom_range(0,100)
								if (random_val > 100/(total_repeat_sub_r_cre))
								{
								cre_more_room = false
								}
								else
								{
								total_repeat_sub_r_cre += 1/(max_r_connection*main_room_val)
								total_repeated ++
								}
							}
							else
							{
							total_repeated ++
							}
						break;
						break;
						}
						else
						{
						cre_more_room = false
						break;
						break;
						}
					}
				}
			}
		}
	}
}

//방 연결 코드 실행
event_user(2);





/////////////////////////////////////////////////
show_debug_message("recreated!")
show_debug_message("max_r_connection : "+string(max_r_connection))
show_debug_message("main_room_val : "+string(main_room_val))
show_debug_message("total_repeat_sub_r_cre : "+string(total_repeat_sub_r_cre))
show_debug_message("total_repeated : "+string(total_repeated))
show_debug_message("total_room : "+string(total_room))
