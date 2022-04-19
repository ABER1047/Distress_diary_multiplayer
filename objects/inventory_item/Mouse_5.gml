/// @description Insert description here
// You can write your code in this editor
if global.grabed = 0
{
now_move_stacks ++
global.grabed = id
grabed = 1


	if sprite_index = spr_backpack && rd_gb_timer > 1
	{
		if owner_.bp_name = "Stash"
		{
		ready_grab = 0
		rd_gb_timer = 21
		inv_system_sect4(bp_xsize,bp_ysize,item_name,800,200)
		}
		else
		{
		var sfx_ = audio_play_sound(cannot_buy,0,false)
		audio_sound_gain(sfx_,0.1,0)
		}
	}

gb_x = mouse_x
gb_y = mouse_y
ready_grab = 1
	if rd_gb_timer != 21
	{
	rd_gb_timer = 1
	}
}