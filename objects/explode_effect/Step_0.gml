/// @description Insert description here
// You can write your code in this editor
destroy_time++
if destroy_time > 600
{
image_alpha -= 0.05
}

if image_alpha < 0
{
instance_destroy()
}


if destroy_time = 1
{
	for(var i = 0; i < 20; i++)
	{
	xx[i] = irandom_range(-rad,rad);
	yy[i] = irandom_range(-rad/2.6,rad/2.6);

		repeat(3)
		{
		xx[i] += (0 - xx[i])*0.1
		yy[i] += (0 - yy[i])*0.1
		}
	}

	image_xscale = rad/32
	image_yscale = rad/32

	var _ins_pl = instance_place(x,y,wall_tile_here)
	if _ins_pl > 0
	{
	var dis =  abs(y - _ins_pl.y)
		if dis <= rad/2
		{
		var _ef = instance_create_depth(x,_ins_pl.y,_ins_pl.depth,explode_effect_for_wall)
		var _cal = (rad - dis/1.5)
		if _cal < 0
		{
		_cal = 0
		}
		_ef.rad = _cal
		show_debug_message("cre_wall_explo "+string(_cal)+" / "+string(x)+" , "+string(y))
		}
	}
}
