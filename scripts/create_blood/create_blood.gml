// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param x
///@param y
///@param rad
///@param bg_color
///@param image_alpha
///@param for_multi
function create_blood(arguemnt0,arguemnt1,arguemnt2,arguemnt3,arguemnt4,arguemnt5)
{
	if optimizing_effect(2)
	{
	var _effect = instance_create_depth(arguemnt0,arguemnt1,room_width*2,blood_effect)
	_effect.rad = arguemnt2*32;
	_effect.bg_color = arguemnt3;
	_effect.image_xscale = arguemnt2/16
	_effect.image_yscale = arguemnt2/16
	_effect.image_alpha = arguemnt4;
	_effect.spread_blood_rad = arguemnt2*32;
	_effect.for_multi = arguemnt5;
	return _effect;
	}
	else
	{
	return -4;
	}
}