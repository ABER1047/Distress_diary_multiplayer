/// @description Insert description here
// You can write your code in this editor
depth = -(y+13)
shadow_alpha_set(y+13)


z_grid_gravity()
item_movement()


bomb_time++
timer ++

if w_blend = $FF12C8ED
{
w_alpha1 += (0.3 - w_alpha1)*((bomb_time/bomb_max_time))
w_alpha2 += (-0.01 - w_alpha2)*((bomb_time/bomb_max_time))
w_alpha3 += (-0.01 - w_alpha3)*((bomb_time/bomb_max_time))
}

if w_blend = c_white
{
w_alpha1 += (-0.01 - w_alpha1)*((bomb_time/bomb_max_time))
w_alpha2 += (0.3 - w_alpha2)*((bomb_time/bomb_max_time))
w_alpha3 += (-0.01 - w_alpha3)*((bomb_time/bomb_max_time))
}

if w_blend = $FF580EED
{
w_alpha1 += (-0.01 - w_alpha1)*((bomb_time/bomb_max_time))
w_alpha2 += (-0.01 - w_alpha2)*((bomb_time/bomb_max_time))
w_alpha3 += (0.3 - w_alpha3)*((bomb_time/bomb_max_time))
}



if timer = floor(bomb_max_time/4)
{
w_blend = $FF12C8ED
}

if timer = floor(bomb_max_time/2)
{
w_blend = c_white
}

if timer = floor(bomb_max_time/4*3)
{
w_blend = $FF580EED
}

if timer >= floor(bomb_max_time)
{
w_blend = c_white
timer = 0
}


if timer < floor(bomb_max_time/2)
{
image_xscale += (1.2 - image_xscale)*0.3
image_yscale += (0.8 - image_yscale)*0.3
}
else
{
image_xscale += (0.8 - image_xscale)*0.3
image_yscale += (1.2 - image_yscale)*0.3
}




if bomb_max_time < bomb_time
{
bomb_time = 0
	if non_bomb = 0
	{
	bomb_max_time -= 3
	}
}

if bomb_max_time <= 6
{

for(var i = -explo_size; i <= explo_size; i++)
{
	for(var ii = -explo_size; ii <= explo_size; ii++)
	{
	var _dis_cal = point_distance(x,y,x+i,y+ii)
		if _dis_cal < explo_size*16
		{
		var _b = instance_create_depth(x+i*16,y+ii*16,depth,pickaxe_mask)
		_b.pickaxe_power = 4+abs(floor(_dis_cal)-explo_size)
		_b.sound_off = 1
		show_debug_message(4+abs(floor(_dis_cal)-explo_size))
		}
	}
}

var _b2 = instance_create_depth(x,y,depth,bomb_effect_site)
_b2.image_xscale = explo_size
_b2.image_yscale = explo_size

if optimizing_effect(3)
{
var _effect = instance_create_depth(x,y,room_width*2,explode_effect)
_effect.rad = 64;
_effect.bg_color = $FF1C171A
}

view_shake(2,8,5)
	repeat(irandom_range(14,17))
	{
	
	create_bubble_effect(2.5,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/10,0.08,0.08,$FF00D2FE,$FF076BFE,1.5,$FF737272,x,y,-room_width*1.5,0,true,false)
	}
	
	repeat(irandom_range(7,10))
	{
	
	create_bubble_effect(3,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/10,0.07,0.07,c_white,$FF00D2FE,1.5,$FF342F32,x,y,-room_width*1.5,1,true,false)
	}
	
	repeat(irandom_range(7,10))
	{
	
	var z_set = y+irandom_range(-16,16)
	create_spark_effect(x+irandom_range(-8,8),z_set+1,z_set,0,0.4,$FF00D2FE,$FF737272,irandom_range(-50,-80)/10,irandom_range(-4,4),0)
	}
play_sfx(bomb_sfx,0,0.1)
instance_destroy()
}