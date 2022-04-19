/// @description Insert description here
// You can write your code in this editor
ready_grab = 0
if global.grabed != 0
{
	if grabed = 1
	{
	moving_item_now = 0
	inv_system_sect2()
	check_f = 1
	
	play_sfx(draged_item,0,0.05)
	}

alarm[0] = 1
}

if cannot_place = 1
{
owner_ = saved_owner_
alarm[0] = 1
}
