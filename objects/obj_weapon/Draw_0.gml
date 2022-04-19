/// @description Insert description here
// You can write your code in this editor
var target = owner_
if global.weapon_kind = 1
{
	for(var i = 0; i <= 15; i++)
	{
	var yy = y-target.z
	draw_set_alpha(g_line_alpha/(i+1))
	draw_set_color(c_white)
	draw_line_width(x,yy,x+lengthdir_x(122+i*6,image_angle-global.charging_gage*0.9),yy+lengthdir_y(122+i*6,image_angle-global.charging_gage*0.9),2)
	draw_line_width(x,yy,x-lengthdir_x(122+i*6,image_angle+global.charging_gage*0.9),yy-lengthdir_y(122+i*6,image_angle+global.charging_gage*0.9),2)
	}
}




var _angle = -90
var _yscale = -1
var _ascale = 1
var __angle = image_angle+shaking_angle


if instance_exists(target)
{
	if t_shaking_angle = 90
	{
	_angle = 0
	_yscale = 1
		if target.last_angle = 0 && target.last_angle = 2
		{
		_ascale = -1
		}
	}
	
var _aaa = lengthdir_x(size*_ascale,__angle)
var _bbb = lengthdir_y(size*_ascale,__angle)

	if swing_ef_alpha > 0
	{
	draw_sprite_ext(Sprite30,1,x+_aaa,y+_bbb-target.z,_yscale,1,__angle+_angle*1.5,image_blend,swing_ef_alpha)
	}
	draw_sprite_ext(sprite_index,image_index,x,y-target.z,image_xscale,image_yscale,image_angle+shaking_angle,image_blend,image_alpha)

	if shadow_alpha > 0 && image_alpha > 0
	{
	draw_sprite_ext(sprite_index,image_index,x,y-target.z,image_xscale,image_yscale,__angle,c_black,shadow_alpha)
	}
}
