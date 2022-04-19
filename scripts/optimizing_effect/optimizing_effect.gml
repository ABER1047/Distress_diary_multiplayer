// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param target_priority
function optimizing_effect(argument0)
{
	if argument0 = 3
	{
		if instance_number(effects_parents_thi_priority) < (global.max_effect_fir_priority+global.max_effect_sec_priority+global.max_effect_thi_priority)
		{
		return true;
		}
		else
		{
		return false;
		}
	}
	else if argument0 = 2
	{
		if instance_number(effects_parents_sec_priority) < (global.max_effect_fir_priority+global.max_effect_sec_priority)
		{
		return true;
		}
		else
		{
		return false;
		}
	}
	else if argument0 = 1
	{
		if instance_number(effects_parents_fir_priority) < (global.max_effect_fir_priority)
		{
		return true;
		}
		else
		{
		return false;
		}
	}
}