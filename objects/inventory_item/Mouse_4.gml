/// @description Insert description here
// You can write your code in this editor
if global.grabed = 0
{
global.grabed = id

	if sprite_index = spr_backpack && rd_gb_timer > 1
	{
		if owner_.bp_name = "Stash"
		{
		ready_grab = 0
		rd_gb_timer = 21
		inv_system_sect4(bp_xsize,bp_ysize,item_name,800,200)
		
		var sfx_ = audio_play_sound(clothes_jacket,0,false)
		audio_sound_gain(sfx_,0.1,0)
		}
		else
		{
		play_sfx(cannot_buy,0,0.1)
		}
	}
	
	if sprite_index = spr_stackables
	{
		with(inventory_item)
		{
		set_xy()
		}
	}

gb_x = mouse_x-camera_get_view_x(view_camera[0])
gb_y = mouse_y-camera_get_view_y(view_camera[0])
ready_grab = 1
	if rd_gb_timer != 21
	{
	rd_gb_timer = 1
	}
}