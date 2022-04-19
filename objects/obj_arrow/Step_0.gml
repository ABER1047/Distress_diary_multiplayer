/// @description Insert description here
// You can write your code in this editor



var _check_n_room_ = check_n_room(id,code_m.my_ID)
if _check_n_room_
{
if (image_index = 2 || image_index = 3)
{
time ++
	if time > 6
	{
		repeat(irandom_range(0,2))
		{
		create_buble_effect(irandom_range(10,100)/250,direction+irandom_range(-10,10),0,-1*irandom_range(1,100)/10,0.03,0.03,$FF00D2FE,$FF076BFE,1.5,$FF737272,x+irandom_range(-6,6),y+irandom_range(-6,6),depth-1,1,true,false)
		}
	
		repeat(irandom_range(0,2))
		{
		
		create_buble_effect(irandom_range(10,100)/250,direction+irandom_range(-10,10),0,-1*irandom_range(1,100)/10,0.03,0.03,c_white,$FF00D2FE,1.5,$FF342F32,x+irandom_range(-6,6),y+irandom_range(-6,6),depth-1,1,true,false)
		}
	time = irandom_range(-image_index*2,0)
	}
}
}



if image_index = 4
{
image_alpha -= 0.1
	if image_alpha <= 0
	{
	instance_destroy()
	}

	var _ins_pl = instance_place(x,y,player)
	if (_check_n_room_ && _ins_pl >= 0)
	{
	var get_name = _ins_pl.nickname
		if get_name != owner
		{
		_ins_pl.burning ++
		}
		
		if code_m.is_server = true
		{
		var random_val = irandom_range(0,100)
			if random_val <= 5
			{
			create_fire_object(x,_ins_pl.z-irandom_range(0,16),_ins_pl.z,_ins_pl.depth-11,500,0.2,1,pos_x,pos_y)
			}
		}
	}
	
	if collision = 0
	{
		for(var i = 0; i < arrow_speed; i += 0.5)
		{
		x += lengthdir_x(0.5,direction)
		y += lengthdir_y(0.5,direction)
		
			if place_meeting(x,y,wall_parents)
			{
			collision = 1
				if (_check_n_room_ && code_m.is_server = true)
				{
				var random_val = irandom_range(0,100)
					if random_val <= 5
					{
					create_fire_object(x,y-irandom_range(0,32),y,-(y+11),500,0.2,1,pos_x,pos_y)
					}
				}
			break;
			}
		}
	}
}
else
{
	for(var i = 0; i <= 25; i++)
	{
	alpha[i] -= 0.05
	}


	if collision = 0
	{
		for(var i = 0; i < arrow_speed; i += 0.5)
		{
		x += lengthdir_x(0.5,direction)
		y += lengthdir_y(0.5,direction)

		
			if place_meeting(x,y,wall_parents)
			{
			x += lengthdir_x(15,direction)
			y += lengthdir_y(15,direction)
	
			collision = 1
			break;
			}
			
			if _check_n_room_
			{
				var _ins_pl = instance_place(x,y,obj_bomb)
				if _ins_pl >= 0
				{
				_ins_pl.bomb_max_time = 0
				instance_destroy()
				}
		

				var _ins_pl = instance_place(x,y,player)
				if (_ins_pl >= 0)
				{
				var get_name = _ins_pl.nickname
					if get_name != owner
					{
					x += lengthdir_x(25,direction)
					y += lengthdir_y(25,direction)
		
					var __c = _ins_pl.n_arrow_set
					_ins_pl.arrow_img_ind[__c] = image_index
					_ins_pl.arrow_angle[__c] = image_angle
					_ins_pl.arrow_xx[__c] = _ins_pl.x-x
					_ins_pl.arrow_yy[__c] = _ins_pl.y-y
					_ins_pl.n_arrow_set ++
						if _ins_pl.n_arrow_set > 25
						{
						_ins_pl.n_arrow_set = 0
						}
			
					player_wounded(60,30,1.5,3,direction,_ins_pl)
					if image_index = 2
					{
					_ins_pl.burning += 30
					}
					instance_destroy()
					}
				}
			}
		
		
			if i = floor(i)
			{
			ii += 0.05

				if ii > 25
				{
				ii = 0
				}

				if ii = floor(ii)
				{
					if alpha[ii] <= 0
					{
					xx[ii] = x
					yy[ii] = y
					alpha[ii] = 1
					}
				}
			}
		}
	}
	else
	{
		if collision = 1
		{
		depth = -floor(y+lengthdir_y(11,direction))
		image_index ++

			if position_meeting(x,y,wall_tile_here)
			{
				repeat(32)
				{
				x += lengthdir_x(1,direction)
				y += lengthdir_y(1,direction)
				ii += 0.05

				if ii > 25
					{
					ii = 0
					}

					if ii = floor(ii)
					{
						if alpha[ii] <= 0
						{
						xx[ii] = x
						yy[ii] = y
						alpha[ii] = 1
						}
					}
				}
			depth -= 64
			}
		
			if _check_n_room_ && image_index != 5
			{
				repeat(irandom_range(1,3))
				{
				
				var z_set = y+lengthdir_y(32,direction)
				create_spark_effect(x+irandom_range(-8,8),z_set+1,z_set,0,1,c_white,$FF00D2FE,irandom_range(-50,-80)/10,irandom_range(-4,4),0)
				}
			}
		}
	
	collision ++
		if collision > 800
		{
		image_alpha -= 0.05
			if image_alpha <= 0
			{
			instance_destroy()
			}
		}
	}
}
