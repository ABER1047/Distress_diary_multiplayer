// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation

///@param cooltime
///@param cannot_move
///@param m_hp
///@param knockback
///@param knockback_angle
///@param instance
function player_wounded(argument0,argument1,argument2,argument3,argument4,argument5)
{
var my_p = get_my_p(global.nickname,0)
	if (argument5 = my_p)
	{
	my_p.wounded_with_cannotmove = argument1

	argument5.direction = argument4
	argument5.speed_sec = argument3

		if argument2 > 0
		{
		//RGB분리 효과
		my_p.wounded = argument0;
		global.warning_hp = 1;
		global.hp -= argument2;
		my_p.can_revive_time -= argument2;
		obj_camera.sepa_power = argument0/2
		obj_camera.sepa_alpha = argument0
		
		create_blood(my_p.x,my_p.y+19,argument2,$FF371E99,1.5,1);
		show_debug_message("blood"+string(argument2/16)+" / "+string(argument2/16)+" / ")
		}
	}
}