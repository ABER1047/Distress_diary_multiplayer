/// @description Insert description here
// You can write your code in this editor
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
var s_w = camera_get_view_width(view_camera[0])
var s_h = camera_get_view_height(view_camera[0])
camera_set_view_size(view_camera[0],floor(v_x),floor(v_y))

global.blackout_screen += (global.t_blackout_screen - global.blackout_screen)*0.1
weight_for_draw += (global.weight - weight_for_draw)*0.1
temp_for_draw += (global.temperature - temp_for_draw)*0.1
if temp_for_draw > 100
{
temp_for_draw = 100
}
weight_alpha += (0.8 - weight_alpha)*0.05
hydration_alpha += (0.8 - hydration_alpha)*0.05
temperature_alpha += (0.8 - temperature_alpha)*0.05
tired_alpha += (0.8 - tired_alpha)*0.05
hunger_alpha += (0.8 - hunger_alpha)*0.05


if check_weight_change != global.weight
{
weight_alpha = 10
check_weight_change = global.weight
}

if check_hydration_change != floor(global.hydration)
{
hydration_alpha = 10
check_hydration_change = floor(global.hydration)
}

if check_temperature_change != floor(global.temperature)
{
temperature_alpha = 10
check_temperature_change = floor(global.temperature)
}

if check_tired_change != floor(global.tired)
{
tired_alpha = 10
check_tired_change = floor(global.tired)
}

if check_hunger_change != floor(global.hunger)
{
hunger_alpha = 10
check_hunger_change = floor(global.hunger)
}
/////////////////////////////////////////////////////////////////////////////////
var target = get_my_p(global.nickname,0)

if instance_exists(target)
{
	//automatic_camera_pos_set
	//if point_distance(x,y,target.x,target.y) > 64
	//{
	//x = target.x;
	//y = target.y;
	//}
	
	if abs(target.x - x) < 0.1
	{
	x = target.x
	}
	else
	{
	x += (target.x - x)*0.1
	}


	if abs(target.y - y) < 0.1
	{
	y = target.y
	}
	else
	{
	y += (target.y - y)*0.1
	}
}

v_x += (tv_x - v_x)*0.1
v_y += (tv_y - v_y)*0.1
////////////////////////////////////////////////////////////////////////////////
if global.hp <= 2
{
sc_blackout_ef_alpha += (1 - sc_blackout_ef_alpha)*0.1
}
else
{
sc_blackout_ef_alpha += (-0.01 - sc_blackout_ef_alpha)*0.1
}
////////////////////////////////////////////////////////////////////////////////

if global.charging_gage > 0
{
	if global.charge_gage_alpha < 1
	{
	global.charge_gage_alpha += 0.15
	}
}
else
{
	if global.charge_gage_alpha_sec > 0
	{
	global.charge_gage_alpha_sec -= 0.15
	}
	
	if global.charge_gage_alpha > 0
	{
	global.charge_gage_alpha -= 0.15
	}
}

if global.charging_gage >= 100 && global.charged_gage = 0
{
global.charged_gage = 3
}

if global.charged_gage > 0
{
global.charged_gage += (1.9 - global.charged_gage)*0.1
global.charge_gage_alpha_sec += (-0.1 - global.charge_gage_alpha_sec)*0.1
	if global.charge_gage_alpha_sec < -0.095
	{
	global.charge_gage_alpha_sec = 1
	}
}

////////////////////////////////////////////////////////////////////////////////


	if global.t_shake_x <= 0.01
	{
	global.t_shake_x = 0
	}
	
	if global.t_shake_y <= 0.01
	{
	global.t_shake_y = 0
	}
global.t_shake_x += (0 - global.t_shake_x)*0.1
global.t_shake_y += (0 - global.t_shake_y)*0.1
global.real_shake_x += (global.t_shake_x*global.shake_x - global.real_shake_x)*0.1
global.real_shake_y += (global.t_shake_y*global.shake_y - global.real_shake_y)*0.1
global.shake_time ++
	if global.shake_time > 1
	{
	global.shake_x = -global.shake_x
	global.shake_y = -global.shake_y
	global.shake_time = 0
	}



x += global.real_shake_x
y += global.real_shake_y

global.view_angle_ += (0 - global.view_angle_)*0.1
camera_set_view_angle(view_camera[0],global.view_angle_)


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


for(var i = 0; i < 10; i++)
{
global.disp_got_item_alpha_delay[i] -= 0.5
	
	if global.disp_got_item_alpha[i] > 0 && global.disp_got_item_alpha_delay[i] <= 0
	{
	global.disp_got_item_alpha[i] -= 0.05
	}
	
	if global.disp_got_item[i] != -4
	{
		if global.disp_got_item_alpha[i] <= 0
		{
			if i >= 1
			{
				if global.disp_got_item[i-1] = -4
				{
				global.disp_got_item[i-1] = global.disp_got_item[i]
				}
			}
		global.disp_got_item[i] = -4
		}
	}
}


///////////////////////////////////////////////////////////////////////////////////////////////////

global.warning_hp += (-0.01 - global.warning_hp)*0.1
if global.hp <= 1
{
	if global.warning_hp < 0
	{
	global.warning_hp = 1
	}
}


///////////////////////////////////////////////////////////////////////////////////////////////////


if global.guide_timer > 0
{
global.guide_timer ++
global.guide_scale += (1 - global.guide_scale)*0.15

	if global.guide_timer > 300
	{
	global.guide_message_alpha += (-0.01 - global.guide_message_alpha)*0.12
		if global.guide_message_alpha < 0
		{
		global.guide_timer = 0
		}
	}
	else
	{
	global.guide_message_alpha += (1.01 - global.guide_message_alpha)*0.12
	}
}