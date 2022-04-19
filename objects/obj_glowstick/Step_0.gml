/// @description Insert description here
// You can write your code in this editor
shadow_alpha_set(y+3)
depth = -floor(y+3)
var _check_n_room__ = check_n_room(id,code_m.my_ID)
if _check_n_room__
{
	if instance_exists(_light_)
	{
	_light_.x = x;
	_light_.y = y-z;
	}
	else
	{
	_light_ = instance_create_depth(x,y,depth,obj_light)
	_light_.p_id = id
	_light_.alpha = 0.3
	_light_.sprite_index = spr_large_circle
	_light_.image_blend = $FF35FF61
	_light_.light_type = 0
	_light_.image_xscale = 3
	_light_.image_yscale = 3
	}
}
else
{
instance_destroy(_light_)
}


if time > 3600
{
var random_val = irandom_range(0,100)
	if random_val <= 2
	{
		if _check_n_room__
		{
		var z_set = y-z
		create_spark_effect(x+irandom_range(-8,8),z_set+1,z_set,0,1,c_white,$FF00D2FE,irandom_range(-50,-80)/10,irandom_range(-4,4),0)
		}
	time ++
	}
	
	if random_val <= 1
	{
		if instance_exists(_light_)
		{
		_light_.image_alpha = 0
		}
	alarm[1] = 5
	}
	
	if time > 3610
	{
	instance_destroy()
	}
}
else
{
time ++
}


if image_angle > 180 || image_angle < -180
{
image_angle = 0
}


if z <= 0
{
	if abs(hspeed) < 0.05
	{
	hspeed = 0
	}
	else
	{
	hspeed += (0 - hspeed)*0.1
	}
	
	if abs(vspeed) < 0.05
	{
	vspeed = 0
	}
	else
	{
	vspeed += (0 - vspeed)*0.1
	}
	
	if (abs(image_angle) <= 180 && abs(image_angle) >= 175) || (abs(image_angle) <= 5 && abs(image_angle) >= 0)
	{
	image_angle += (random_angle - image_angle)*0.3;
		if image_angle < 1 || image_angle > 179
		{
		image_angle = random_angle
		}
	}
	else
	{
	image_angle += (random_angle - image_angle)*0.01
		if abs(zspeed) < 0.5
		{
		image_angle += (random_angle - image_angle)*0.3;
		zspeed = 0
		}
		else
		{
			if zspeed > 0
			{
			zspeed = -zspeed/1.5
			}
		}
	}
}
else
{
image_angle += 12/image_xscale
}
z_grid_gravity()


for(var i = 0.1; i < abs(hspeed); i += 0.5)
{
	if position_meeting(x+i*sign(hspeed),y,wall_parents)
	{
	x = x+i;
	hspeed = -hspeed/2;
	image_xscale = -image_xscale;
	break;
	}
}

for(var ii = 0.1; ii < abs(vspeed); ii += 0.5)
{
	if position_meeting(x,y+ii*sign(vspeed),wall_parents)
	{
	y = y+ii;
	vspeed = -vspeed/2;
	image_xscale = -image_xscale;
	break;
	}
}