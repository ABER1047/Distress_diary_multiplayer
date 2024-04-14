// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation

///@param target
function get_player_angle(argument0)
{
	if global.cannot_chance_dir = 0
	{
	var target_____ = argument0
	var __xtox = target_____.x-x
	var __ytoy = target_____.y-y
	var dis_x__ = abs(__xtox)
	var dis_y__ = abs(__ytoy)

		if dis_y__ > dis_x__
		{
			if sign(__ytoy) > 0
			{
			var spr_setting__ = asset_get_index(sprite_get_name(target_____.ori_spr)+"_1")
			target_____.sprite_index = spr_setting__
			target_____.last_angle = 1
			}
			else
			{
			var spr_setting__ = asset_get_index(sprite_get_name(target_____.ori_spr)+"_2")
			target_____.sprite_index = spr_setting__
			target_____.last_angle = 3
			}
		}
		else
		{
			if sign(__xtox) > 0
			{
			target_____.sprite_index = target_____.ori_spr
			target_____.last_angle = 2
			target_____.image_xscale = abs(target_____.image_xscale)
			}
			else
			{
			target_____.sprite_index = target_____.ori_spr
			target_____.last_angle = 0
			target_____.image_xscale = -abs(target_____.image_xscale)
			}
		}
	}
}