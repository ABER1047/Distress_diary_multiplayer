/// @description Insert description here
// You can write your code in this editor

var _ins_pl = instance_place(x,y,player)
if (_ins_pl >= 0)
{
	if received != 0
	{
	var dir = point_direction(x,y,_ins_pl.x,_ins_pl.y+19)
	player_wounded(freeze_time/1.5,freeze_time,damage,knockback,dir,_ins_pl)
	instance_destroy()
	}
}