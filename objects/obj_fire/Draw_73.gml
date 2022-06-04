/// @description Insert description here
// You can write your code in this editor
if check_n_room(id,code_m.my_ID)
{
	if interactable_now = 1
	{
		if activate = 0
		{
		draw_key_guide(0,"Turn on",max_int_val)
		}
		else
		{
		draw_key_guide(0,"Turn off",max_int_val)
		}
	}
	
	/*if x > -100 && surface_exists(owner_surface)
	{
	surface_set_target(owner_surface);
	draw_clear_alpha(0,0);  // It doesn't matter what colour you give it - it's going to be transparent.
	surface_reset_target();
	}*/
}