/// @description Insert description here
// You can write your code in this editor
if setting_object = 1
{
var target = owner_
in_hand_item_set_xy(self,target,0)
if (instance_exists(target) && global.nickname = target.nickname) 
{
var x_pos_ = global.n_pos_x[code_m.my_ID];
var y_pos_ = global.n_pos_y[code_m.my_ID];
shadow_alpha_set(target.y+19)


if audio_is_playing(frame_thrower_sfx)
{
audio_sound_gain(frame_thrower_sfx,f_thrower_volume,0)
	if f_thrower_volume <= 0
	{
	audio_stop_sound(frame_thrower_sfx)
	frame_thrower_sfx = -4
	}
}

if attack_ > 0
{
	if (ammo_kind = 2)
	{
	f_thrower_volume += (0.15 - f_thrower_volume)*0.05
		if !audio_is_playing(frame_thrower_sfx)
		{
		frame_thrower_sfx = play_sfx(frame_thrower,0,0)
		}
	}
	
	if global.weapon_kind = 0
	{
	global.tired += 0.01
	}
	
	if global.weapon_kind = 1 || global.weapon_kind = 3
	{
	global.tired += 0.002
	}
	
	if global.weapon_kind = 2
	{
	global.tired += 0.005
	}
}
else
{
f_thrower_volume += (-0.01 - f_thrower_volume)*0.05
}


var spr_setting__ = asset_get_index(sprite_get_name(string(target.ori_spr))+"_1")
	if target.sprite_index = spr_setting__
	{
	depth = target.depth+1
	}
	else
	{
	depth = target.depth-1
	}

	if attack_ = 1
	{
		if global.weapon_kind = 0
		{
		shaking_angle += (t_shaking_angle - shaking_angle)*attack_speed

		swing_ef_alpha += (-0.01 - swing_ef_alpha)*attack_speed*1.5

		image_alpha = 1
			if abs(shaking_angle - t_shaking_angle) < (2-keep_attacking)
			{
			angle_timer = 0
			attack_ = 0
			image_alpha = 0
			}
		
			if mouse_check_button_released(mb_left)
			{
			alarm[1] = 25
			}
		}
	
	
		if global.weapon_kind = 3
		{
		taking_dilay ++
			if taking_dilay >= attack_speed
			{
			taking_dilay = 0
			attack_ = 0
			global.charged_gage = 0
			global.charge_gage_alpha_sec = 0
			global.charging_gage = 100*(reloaded_ammo/max_ammo)
			angle_timer = 0
			}
		image_alpha = taking_dilay
		shaking_angle = 0
		t_shaking_angle = 0
		swing_ef_alpha = 0
		}
	
	
		if global.weapon_kind = 1
		{
			if (mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right) || target.wounded_with_cannotmove > 0)
			{
			var point_dir = point_direction(x,y,mouse_x,mouse_y)
			//show_debug_message(point_dir)
		
				if mouse_check_button_released(mb_left)
				{
				
				var cal_ = (100-global.charging_gage)*0.9
				var _random_angle = irandom_range(-cal_,cal_)
			
				play_sfx(choose(swing_1,swing_2,swing_3,swing_4,swing_5),0,0.25)
				play_sfx(bow_shoot,0,0.1)
				create_arrow(x,y-target.z,point_dir+_random_angle,30,ammo_kind,global.nickname,1,x_pos_,y_pos_)
				alarm[2] = 20*attack_speed
				}
				else
				{
				alarm[2] = 15*attack_speed
				}
			
				if bow_sfx != -4
				{
				audio_stop_sound(bow_sfx)
				bow_sfx = -4
				}
			
				if point_dir >= 270
				{
				var _light = target._light_
					if point_dir >= 315
					{
					_light.image_angle = -45+(point_dir-315)
					}
					else
					{
					_light.image_angle = -45+(315-point_dir)
					}
				}
			
				
			angle_timer = 0
			g_line_alpha = 0
			global.charging_gage = 0
			global.charged_gage = 0
			attack_ = 0
			image_alpha = 0
			alarm[1] = 1
			}
			else
			{
			g_line_alpha += (0.1 - g_line_alpha)*0.1
			
				if global.charging_gage < 100
				{
				global.charging_gage += 1.9
				}
			
			var _dis_x = (target.x - mouse_x)
			var _dis_y = (target.y - mouse_y)
	
				if abs(_dis_x) > abs(_dis_y)
				{
					if _dis_x < 0
					{
					target.last_angle = 0
					}
					else
					{
					target.last_angle = 2
					}
				}
				else
				{
				var f_cal = sign(_dis_y)
					if f_cal < 0
					{
					f_cal = 3
					}
				target.last_angle = f_cal
				}
			
			shaking_angle = 0
			t_shaking_angle = 0
			swing_ef_alpha = 0
			image_alpha = 1
			image_angle = point_direction(x,y,mouse_x,mouse_y)+90
			}
		}
	
	
		if global.weapon_kind = 2
		{
		swing_ef_alpha = 0
		keep_attacking = 0
	
		var _target_sec = _ins_mace
		if !instance_exists(_target_sec)
		{
		_ins_mace = instance_create_depth(target.x,target.y,depth+1,obj_mace);
		_ins_mace.direction = point_direction(x,y,obj_mouse.x,obj_mouse.y);
		_ins_mace.speed = 15;
		_ins_mace.personal_id = id;
		_ins_mace.owner_id = target.id;
		_ins_mace.received = 0;
		_ins_mace.target = global.nickname;
		_target_sec = _ins_mace;
		}
		
		
	
		var _dis_x = (target.x - _target_sec.x)
		var _dis_y = (target.y - _target_sec.y)
	
			if abs(_dis_x) > abs(_dis_y)
			{
				if _dis_x < 0
				{
				target.last_angle = 0
				}
				else
				{
				target.last_angle = 2
				}
			}
			else
			{
			var f_cal = sign(_dis_y)
				if f_cal < 0
				{
				f_cal = 3
				}
			target.last_angle = f_cal
			}
	
			if taking_dilay = 0 && !mouse_check_button(mb_left) && instance_exists(_ins_mace)
			{
			_ins_mace.direction = point_direction(_ins_mace.x,_ins_mace.y,x,y)
			_ins_mace.speed = 15
			taking_mace = 1
			}
		
			if taking_mace = 1
			{
				if point_distance(x,y,_ins_mace.x,_ins_mace.y) < 32
				{
				taking_mace = 0
				instance_destroy(_ins_mace)
				angle_timer = 0
				attack_ = 0
				image_alpha = 0
				_ins_mace = noone
				}
			}
		}
	}

	if attack_ = 0 && target.wounded_with_cannotmove = 0
	{
		//활 무기 경우
		if global.weapon_kind = 1
		{
			if taking_dilay = 0 && mouse_check_button(mb_right)
			{
			global.cannot_chance_dir = 1
			taking_dilay = 1
			n_angle = target.last_angle
			attack_ = 1
			bow_sfx = play_sfx(bow_swing,0,0.25)
			}
		}
		else if global.weapon_kind = 3
		{
			if taking_dilay = 0
			{
				if mouse_check_button(mb_right)
				{
				global.cannot_chance_dir = 1
				var point_dir = point_direction(x,y,mouse_x,mouse_y)
				image_angle = point_dir+90
				image_alpha = 1
			
				var p_light = target._light_
				p_light.image_angle = point_dir
				target.light_dir = target.last_angle
			
			
				var _dis_x = (target.x - mouse_x)
				var _dis_y = (target.y - mouse_y)
	
					if abs(_dis_x) > abs(_dis_y)
					{
						if _dis_x < 0
						{
						target.last_angle = 0
						}
						else
						{
						target.last_angle = 2
						}
					}
					else
					{
					var f_cal = sign(_dis_y)
						if f_cal < 0
						{
						f_cal = 3
						}
					target.last_angle = f_cal
					}
					
					if reloaded_ammo > 0 && reloading = 0
					{
						if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(ord("C")) || (fullauto = 1 && mouse_check_button(mb_left)))
						{
						var point_dir = point_direction(x,y,mouse_x,mouse_y)
						
						if (ammo_kind = 0 || ammo_kind = 1)
						{
						play_sfx(bow_shoot,0,0.1)
						create_arrow(x,y-target.z,point_dir,30,ammo_kind,global.nickname,1,x_pos_,y_pos_)
						}
						
						if (ammo_kind = 2)
						{
						create_arrow(x,y-target.z,point_dir+irandom_range(-12,12),20,ammo_kind,global.nickname,1,x_pos_,y_pos_)
						}
						image_angle = point_dir+90
						attack_ = 1
						reloaded_ammo --
						}
					}
				}
				else
				{
				image_alpha = 0
				global.cannot_chance_dir = 0
				}
		
				if reloading = 0 && reloaded_ammo != max_ammo && keyboard_check_pressed(ord("R"))
				{
				global.charging_gage = 0
				reloading = 1
				play_sfx(bow_swing,0,0.25)
				}
		
				if reloading > 0
				{
					if global.charging_gage > 100
					{
					reloaded_ammo = max_ammo
					reloading = 0
					global.charging_gage = 100
					}
					else
					{
					global.charging_gage += 1.5
					}
				}
			}
		}
		else
		{
			if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(ord("C")))
			{
			n_angle = target.last_angle
			attack_ = 1
			play_sfx(choose(swing_1,swing_2,swing_3,swing_4,swing_5),0,0.25)
				if global.weapon_kind = 0
				{
				////////////////////////////////////////////////////////////////////////////////////
	
					if n_angle = 0
					{
					var _a = instance_create_depth(target.x+24,target.y+8,depth,sword_mask)
						if global.pickaxe_p > 0
						{
						var _b = instance_create_depth(target.x+24,target.y+8,depth,pickaxe_mask)
						}
					}
					else if n_angle = 1
					{
					var _a = instance_create_depth(target.x,target.y-20,depth,sword_mask)
						if global.pickaxe_p > 0
						{
						var _b = instance_create_depth(target.x,target.y-20,depth,pickaxe_mask)
						}
					}
					else if n_angle = 2
					{
					var _a = instance_create_depth(target.x-24,target.y+8,depth,sword_mask)
						if global.pickaxe_p > 0
						{
						var _b = instance_create_depth(target.x-24,target.y+8,depth,pickaxe_mask)
						}
					}
					else
					{
					var _a = instance_create_depth(target.x,target.y+28,depth,sword_mask)
						if global.pickaxe_p > 0
						{
						var _b = instance_create_depth(target.x,target.y+28,depth,pickaxe_mask)
						}
					}
		
				////////////////////////////////////////////////////////////////////////////////
				_b.pickaxe_power = global.pickaxe_p
				_b.sound_off = 0
	
				////////////////////////////////////////////////////////////////////////////////
				_a.image_xscale = 1+size/32;
				_a.image_yscale = 1.2+size/32;
				_a.image_angle = n_angle*90;
				_a.damage = damage;
				_a.knockback = knockback;
				_a.freeze_time = freeze_time;
				_a.received = 0;
				}
	
	
				if global.weapon_kind = 2
				{
					if _ins_mace = noone
					{
					_ins_mace = instance_create_depth(target.x,target.y,depth+1,obj_mace)
					_ins_mace.direction = point_direction(x,y,obj_mouse.x,obj_mouse.y)
					_ins_mace.speed = 15
					_ins_mace.personal_id = id
					_ins_mace.owner_id = target.id;
					_ins_mace.received = 0
					_ins_mace.target = global.nickname
					taking_dilay = 1
					alarm[2] = 35
					}
				}

			alarm[0] = 1

				if keep_attacking = 0
				{
				shaking_angle = 80
				t_shaking_angle = -90
				keep_attacking = 1
				}
				else
				{
				shaking_angle = -80
				t_shaking_angle = 90
				keep_attacking = 0
				}
			}
		}
	}



	if global.cannot_chance_dir = 0 && instance_exists(target)
	{
	image_angle = target.last_angle*90-45
	}

}
}
//draw_set_alpha(1)
//draw_text(x,y,string(swing_ef_angle[1])+" / "+string(swing_ef_angle[2]))