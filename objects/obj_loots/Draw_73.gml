/// @description Insert description here
// You can write your code in this editor
if check_n_room(id,code_m.my_ID)
{
	if interactable_now = 1
	{
		if someone_is_looting <= 0
		{
			if interaction_time <= 0
			{
			draw_key_guide(0,"Loot",max_int_val)
			}
			else
			{
			draw_key_guide(0,"Searching",max_int_val)
			}
		}
		else
		{
		draw_key_guide(0,"Close",max_int_val)
		}
	}
}