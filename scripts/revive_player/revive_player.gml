// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param target
///@param revive_hp
///@param revive
function revive_player(argument0,argument1,argument2)
{
argument0.knocked_out = 0;
argument0.wounded = 30;
global.hp = argument1;
global.t_blackout_screen = -0.01
global.charging_gage = 0;
global.charged_gage = 0;
obj_camera.tv_x = 1280*0.75
obj_camera.tv_y = 720*0.75
global.n_pos_x[argument0.playerID] = global.start_n_pos_x;
global.n_pos_y[argument0.playerID] = global.start_n_pos_y;
global.refresh_pos_for_multi = 1
	
	if argument2 = 0
	{
	global.hydration = 90;
	global.hunger = 100;
	global.temperature = 0;
	global.tired = 0;
	argument0.burning = 0;
	argument0.b_arrow_set = -1;
	argument0.n_arrow_set = 0;
	
		for(var i = 0; i <= 25; i++)
		{
		arrow_img_ind[i] = -4
		arrow_xx[i] = -4
		arrow_yy[i] = -4
		arrow_angle[i] = -4
		}
	}
}