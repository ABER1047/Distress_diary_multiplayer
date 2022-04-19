// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation
///@param y_grid
function shadow_alpha_set_fast(argument0)
{
	if position_meeting(x,argument0,wall_shadow)
	{
	shadow_alpha = 0.5
	}
	else
	{
	shadow_alpha = -0.1
	}
}