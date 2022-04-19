/// @description Insert description here
// You can write your code in this editor
var cannot_move = 0
shadow_alpha_set(y+19)

if instance_exists(__pickaxe)
{
total_ammo = __pickaxe.reloaded_ammo
}

	var ins_place = instance_place(x,y-z,fire_object)
	if ins_place > 0 && ins_place.y = ins_place.z
	{
	burning += 0.1;
	}


	if instance_exists(_light_)
	{
	in_hand_item_set_xy(_light_,self,z)
	_light_.depth = depth+1
		if global.weapon_kind = 1
		{
			if __pickaxe.attack_ = 1
			{
			_light_.image_angle = point_direction(x,y,mouse_x,mouse_y)
			light_dir = last_angle
			}
			else
			{
				if __pickaxe.image_alpha <= 0
				{
					if light_dir != last_angle
					{
						if light_dir = 3 && last_angle = 0
						{
						_light_.image_angle = -90
						}
		
						if light_dir = 0 && last_angle = 3
						{
						_light_.image_angle = 360
						}
					light_dir = last_angle
					}
				_light_.image_angle += (real(last_angle)*90 - _light_.image_angle)*0.2
				}
			}
		}
		else
		{
			if __pickaxe.image_alpha <= 0
			{
				if light_dir != last_angle
				{
					if light_dir = 3 && last_angle = 0
					{
					_light_.image_angle = -90
					}
		
					if light_dir = 0 && last_angle = 3
					{
					_light_.image_angle = 360
					}
				light_dir = last_angle
				}
			_light_.image_angle += (real(last_angle)*90 - _light_.image_angle)*0.2
			}
		}
	//_light_.image_angle = point_direction(x,y,mouse_x,mouse_y)
	}

if (global.nickname = nickname)
{
z_grid_gravity()
depth = -floor(y+19)

	if (global.tp_portal != -4)
	{
	var exit_portal = 0
		with(obj_portal)
		{
			if (global.tp_portal = tp_to)
			{
			exit_portal = id;
			}
		}
		
		if global.tp_portal = 1
		{
		x = exit_portal.x-32;
		y = exit_portal.y;
		}
		else if global.tp_portal = 2
		{
		x = exit_portal.x;
		y = exit_portal.y-32;
		}
		else if global.tp_portal = 3
		{
		x = exit_portal.x+32;
		y = exit_portal.y;
		}
		else
		{
		x = exit_portal.x;
		y = exit_portal.y;
		}
	obj_camera.x = x;
	obj_camera.y = y;

	global.tp_portal = -4;
	}
	
	if (global.can_move_room = 0 && !place_meeting(x,y,obj_portal))
	{
	global.can_move_room = 1
	}


	var ins_fire_near = instance_nearest(x,y,obj_bubble_effect)
	if instance_exists(ins_fire_near)
	{
		if ins_fire_near.fire = 1
		{
		var volume_a = 0.03*(1-point_distance(x,y,ins_fire_near.xstart,ins_fire_near.ystart)/200)
			if volume_a > 0
			{
				if !audio_is_playing(fire_sfx)
				{
				//show_debug_message("fire_sfx_playing")
				fire_sfx_playing = play_sfx(fire_sfx,0,0)
				}
				else
				{
				audio_sound_gain(fire_sfx_playing,volume_a,0)
				//show_debug_message("fire_sfx_playing_gain")
				}
			}
			else
			{
			audio_stop_sound(fire_sfx)
			}
		}
	}
	else
	{
	audio_stop_sound(fire_sfx)
	}

	if global.hydration <= 0
	{
	global.hp -= 0.001
	}
	
	if global.hunger <= 0
	{
	global.hp -= 0.002
	}
	
	
	var ins_place = instance_place(x,y+19,smoke_effect)
	if ins_place >= 0 && instance_exists(ins_place)
	{
	global.in_smoke = ins_place.image_blend;
	global.in_smoke_alpha += (1.01 - global.in_smoke_alpha)*0.05
	}
	else
	{
	global.in_smoke_alpha += (-0.01 - global.in_smoke_alpha)*0.05
	}


	if burning = 0
	{
	var get_nearest_fire = instance_nearest(x,y+19,obj_fire)
		if instance_exists(get_nearest_fire) && get_nearest_fire.activate = 1 && point_distance(x,y,get_nearest_fire.x,get_nearest_fire.y) <= 180
		{
		var cal_point_dis = (180-point_distance(x,y,get_nearest_fire.x,get_nearest_fire.y))/2
		if cal_point_dis < 60
		{
		cal_point_dis = 60
		}
		temp_increase ++
		
			if temp_increase > 80
			{
			global.temperature += (cal_point_dis - global.temperature)*0.1
			//show_debug_message(string(global.temperature)+" / "+string(cal_point_dis))
				if temp_increase > 85
				{
				temp_increase = 0;
				}
			}
		}
		else
		{
		temp_increase ++
			if temp_increase > 80
			{
			global.temperature += (60 - global.temperature)*0.1
			//show_debug_message(global.temperature)
				if temp_increase > 85
				{
				temp_increase = 0;
				}
			}
		}
	}
	else
	{
	temp_increase ++
		if temp_increase > 80
		{
		global.temperature += (110 - global.temperature)*0.1
			if temp_increase > 85
			{
			temp_increase = 0;
			}
		}
	}

	if global.hp <= 0
	{
		if cannot_move_wall = 0
		{
			if place_meeting(x,y,player)
			{
			var _ins_get = instance_place(x,y,player)
				if _ins_get.z <= 0 && z = 0
				{
				direction = point_direction(x,y,_ins_get.x,_ins_get.y)+180
				speed_sec = (5 - point_distance(x,y,_ins_get.x,_ins_get.y)/16)
				}
			}
		}
		else
		{
		cannot_move_wall --
		}

		var _wall_ins = wall_parents
		if place_meeting(x,y,_wall_ins)
		{
		var _ins_get = instance_place(x,y,_wall_ins)
		direction = point_direction(x,y,_ins_get.x,_ins_get.y)+180
		cannot_move_wall = 10
		//speed_sec = (5 - point_distance(x,y,_ins_get.x,_ins_get.y)/16)
		}
		
		
		if knocked_out = 0
		{
		create_blood(x,y+19,128,$FF371E99,1.5,1);
		knocked_out = 1
		zspeed = -4;
		can_revive_time = global.max_hp;
		show_debug_message("A")
		guide_message("Need help",7)
		}
		else
		{
		can_revive_time -= 0.005;
			if can_revive_time > 0
			{
			obj_camera.tv_x = 1280*0.4
			obj_camera.tv_y = 720*0.4
			global.charging_gage = 100*(can_revive_time/global.max_hp);
			global.t_blackout_screen = (can_revive_time/global.max_hp)*0.5
			}
			else
			{
			//게임오버 부활
			global.charging_gage = 0
			global.charged_gage = 0
			global.t_blackout_screen = 2
			
				if global.blackout_screen > 1.99
				{
				revive_player(self,global.max_hp,0)
				x = room_width/2
				y = room_height/2
				}
			}
		}
	}
	
	if (z <= 0 && fixing_zgrid = 0)
	{
	speed_sec += (0 - speed_sec)*0.1
	}
	
	if abs(speed_sec) > 0.1
	{
	var saved_speed = 0;
		for(var i = 0; i < abs(speed_sec); i += 0.6)
		{
			if place_meeting(x+lengthdir_x(i,direction),y+lengthdir_y(i,direction),wall_parents)
			{
			speed_sec *= 0.2
			direction += 180
			cannot_move_wall = 10
			break;
			}
		saved_speed = i;
		}
	x += lengthdir_x(saved_speed,direction)
	y += lengthdir_y(saved_speed,direction)
	}
	
	var x_movement = 0
	for(var i = 0; i <= abs(global.v_m_speed*1.8); i += 0.5)
	{
	var _checker_cal = i*sign(global.v_m_speed)
		if place_meeting(x+_checker_cal,y,wall_parents)
		{
		//_checker_cal -= 0.5*sign(global.v_m_speed)
		break;
		}
	x_movement = _checker_cal
	}
	x += x_movement

	var y_movement = 0
	for(var i = 0; i <= abs(global.h_m_speed*1.8); i += 0.5)
	{
	var _checker_cal = i*sign(global.h_m_speed)
		if place_meeting(x,y+_checker_cal,wall_parents)
		{
		//_checker_cal -= 0.5*sign(global.h_m_speed)
		break;
		}
	y_movement = _checker_cal
	}
	y += y_movement
	
	///////////////////////////////////////////////////////////////////////////
	if wounded > 0
	{
	wounded --
	}

	if wounded_with_cannotmove > 0 && global.hp > 0
	{
	cannot_move = 1
	wounded_with_cannotmove --
	}
	///////////////////////////////////////////////////////////////////////////
	var maximum_m_speed_sec = 2
	if global.hydration <= 0
	{
	maximum_m_speed_sec = 1
	}
	
	if global.weight > 150
	{
		if global.hydration <= 0
		{
		maximum_m_speed_sec = (2+((150-global.weight)/100))*0.5
		}
		else
		{
		maximum_m_speed_sec = 2+((150-global.weight)/100)
		}
		
		if maximum_m_speed_sec < 0.01
		{
		maximum_m_speed_sec = 0.01
		}
	}
	
	if __pickaxe.attack_ > 0
	{
	maximum_m_speed_sec *= 0.4
	}


	//////////////////////////////////////////////////////////////////////////////////////////

	var _ins_get = instance_place(x,y,bomb_effect_site)
	if _ins_get >= 0
	{
	show_debug_message("B_D")
	var _pont_dis = point_distance(x,y,_ins_get.x,_ins_get.y)

	//zspeed -= (13 - _pont_dis/16)/8
		if wounded = 0
		{
		player_wounded(60,30,4,(13 - _pont_dis/16),point_direction(x,y,_ins_get.x,_ins_get.y)+180,id)
		}
	}

	//////////////////////////////////////////////////////////////////////////////////////////


	if global.hp > 0
	{
		if global.weapon_kind != 3
		{
			if __pickaxe.attack_ > 0
			{
			global.cannot_chance_dir = 1
			}
			else
			{
			global.cannot_chance_dir = 0
			}
		}




		////////////////////////////////////////////////////////////
		var xmove_now = 0
		var ymove_now = 0

		if cannot_move = 0
		{
			if keyboard_check(ord("W"))
			{
			ymove_now = 1
			global.h_m_speed += (-maximum_m_speed_sec - global.h_m_speed)*0.1

				if global.cannot_chance_dir = 0
				{
				last_angle = 1
				}
			}

			if keyboard_check(ord("S"))
			{
			ymove_now = 1
			global.h_m_speed += (maximum_m_speed_sec - global.h_m_speed)*0.1

				if global.cannot_chance_dir = 0
				{
				last_angle = 3
				}
			}


			if keyboard_check(ord("A"))
			{
			xmove_now = 1
			global.v_m_speed += (-maximum_m_speed_sec - global.v_m_speed)*0.1

				if global.cannot_chance_dir = 0
				{
				last_angle = 2
				}
			}

			if keyboard_check(ord("D"))
			{
			xmove_now = 1
			global.v_m_speed += (maximum_m_speed_sec - global.v_m_speed)*0.1

				if global.cannot_chance_dir = 0
				{
				last_angle = 0
				}
			}
		}

		if last_angle = 0
		{
		sprite_index = ori_spr
		image_xscale = -abs(image_xscale)
		bp_sprite = asset_get_index("spr_original_bp"+string(sprite_seter))
		}

		if last_angle = 1
		{
		var spr_setting__ = asset_get_index(sprite_get_name(string(ori_spr))+"_1")
		sprite_index = spr_setting__
		bp_sprite = asset_get_index("spr_original_bp"+string(sprite_seter)+"_1")
		}

		if last_angle = 2
		{
		image_xscale = abs(image_xscale)
		sprite_index = ori_spr
		bp_sprite = asset_get_index("spr_original_bp"+string(sprite_seter))
		}

		if last_angle = 3
		{
		var spr_setting__ = asset_get_index(sprite_get_name(string(ori_spr))+"_2")
		sprite_index = spr_setting__
			if sprite_exists(spr_setting__)
			{
			bp_sprite = asset_get_index("spr_original_bp"+string(sprite_seter)+"_2")
			}
			else
			{
			bp_sprite = spr_original_bp_front
			}
		}


		if xmove_now+ymove_now = 0
		{
		image_index += (0 - image_index)*0.1
			if abs(image_index) < 0.2
			{
			image_index = 0
			}
		}


		if xmove_now = 0
		{
		global.v_m_speed += (0 - global.v_m_speed)*0.3
		}

		if ymove_now = 0
		{
		global.h_m_speed += (0 - global.h_m_speed)*0.3
		}

		if abs(global.v_m_speed) > abs(global.h_m_speed)
		{
		image_index += abs(global.v_m_speed)*0.1
		}
		else
		{
		image_index += abs(global.h_m_speed)*0.1
		}
	}
	else
	{
		if z <= 0 && zspeed >= 0
		{
		sprite_index = spr_original_bp_wounded
		bp_sprite = noone
		}
	}
}
else
{
	//revive
	if can_revive_time > 0
	{
		if (knocked_out > 0 && global.hp > 0)
		{
		var my_p = get_my_p(global.nickname,0)
	
			if point_distance(x,y,my_p.x,my_p.y) <= 64
			{
				if mouse_check_button(mb_right)
				{
				obj_camera.tv_x = 1280*0.55
				obj_camera.tv_y = 720*0.55
				my_p.wounded_with_cannotmove = 1
				reviving_now ++
				}
				else
				{
				my_p.wounded_with_cannotmove = 0
				reviving_now = 0
				obj_camera.tv_x = 1280*0.75
				obj_camera.tv_y = 720*0.75
				}
		
				if reviving_now > 0
				{
				reviving_now ++;
				}
		
				if reviving_now >= 800
				{
				show_debug_message("R")
				buffer_seek(command_buffer, buffer_seek_start, 0);
				buffer_write(command_buffer, buffer_u8, code_m.DATA.COMMAND);
				buffer_write(command_buffer, buffer_u8, code_m.my_ID);
				buffer_write(command_buffer, buffer_u8, code_m.COMM.P_REVIVE);
				buffer_write(command_buffer, buffer_string,string(nickname));
				send_all(command_buffer);
				reviving_now = 0;
				obj_camera.tv_x = 1280*0.75
				obj_camera.tv_y = 720*0.75
				}
			global.charging_gage = reviving_now/8;
			}
			else
			{
				if reviving_now > 0
				{
				reviving_now = 0
				global.charging_gage = 0;
				obj_camera.tv_x = 1280*0.75
				obj_camera.tv_y = 720*0.75
				}
			}
		}
		else
		{
			if reviving_now > 0
			{
			reviving_now = 0
			global.charging_gage = 0;
			obj_camera.tv_x = 1280*0.75
			obj_camera.tv_y = 720*0.75
			}
		}
	}
}