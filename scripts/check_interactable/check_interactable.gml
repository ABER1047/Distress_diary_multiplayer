// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param key
///@param press_time
function check_interactable(argument0,argument1)
{
	if interactable_now = 1 && keyboard_check_pressed(argument0)
	{
	interaction_time ++;
	}
	
	var check_other_key_pressed = 0;
	
	if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(argument0)
	{
	check_other_key_pressed = 1;
	}
	
	if global.interact_type = 1 && keyboard_check_released(argument0)
	{
	check_other_key_pressed = 1;
	}
	
	if (interactable_now = 0 || check_other_key_pressed = 1)
	{
	interaction_time = 0;
	return false;
	}
	
	if interaction_time > 0
	{
	interaction_time++;
		if interaction_time >= argument1
		{
		interaction_time = 0;
		return true;
		}
	}
}