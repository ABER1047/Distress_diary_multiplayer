// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation
function item_movement()
{
	if (abs(speed) > 0 && z <= 0 && fixing_zgrid = 0)
	{
	var _target = get_my_p(global.nickname,0)

		var _wall_ins = wall_parents
		if place_meeting(x,y,_wall_ins)
		{
		var _ins_get = instance_place(x,y,_wall_ins)
		direction = point_direction(x,y,_ins_get.x,_ins_get.y)+180
		compensated_x = x+lengthdir_x(speed,direction+180)
		compensated_y = y+lengthdir_y(speed,direction+180)
		check_stucked ++
		//speed = (5 - point_distance(x,y,_ins_get.x,_ins_get.y)/16)
		}

		if can_move = 1 && place_meeting(x,y,_target)
		{
		var _ins_get = instance_place(x,y,_target)
			if _ins_get.z <= 0
			{
			direction = point_direction(x,y,_ins_get.x,_ins_get.y)+180
			speed = (5 - point_distance(x,y,_ins_get.x,_ins_get.y)/16)
			}
		}

		for(var i = 0; i < 2; i++)
		{
			if i = 0
			{
			var for_c_ins = obj_bomb
			}
			
			if i = 1
			{
			var for_c_ins = obj_item
			}
	
			if place_meeting(x,y,for_c_ins)
			{
			var _ins_get = instance_place(x,y,for_c_ins)
		
				if _ins_get.z <= 0
				{
				direction = point_direction(x,y,_ins_get.x,_ins_get.y)+180
				speed = (5 - point_distance(x,y,_ins_get.x,_ins_get.y)/16)
				}
			}
		}
	
	
		for(var i = 0; i < 3; i++)
		{
			if i = 0
			{
			for_c_ins = obj_mace
			}
	
			if i = 1
			{
			for_c_ins = sword_mask
			}
	
			if i = 2
			{
			for_c_ins = bomb_effect_site
			}
			
			if place_meeting(x,y,for_c_ins)
			{
			var _ins_get = instance_place(x,y,for_c_ins)
			direction = point_direction(x,y,_ins_get.x,_ins_get.y)+180
		
				if i != 2
				{
				speed = (5 - point_distance(x,y,_ins_get.x,_ins_get.y)/16)
				}
				else
				{
				speed = (13 - point_distance(x,y,_ins_get.x,_ins_get.y)/16)
				}
			}
		}
	}
	
	
	//prevent stucking in wall
	if check_stucked > 20
	{
	x = compensated_x;
	y = compensated_y;
	check_stucked = 0
	}
	
	if check_stucked > 0
	{
	check_stucked -= 0.5
	}
speed += (0 - speed)*0.1
}