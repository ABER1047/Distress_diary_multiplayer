// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation
function z_grid_gravity()
{
///////////////////////////for z///////////////////////////
z -= zspeed;
zspeed += zgravity*9.8

	if z < 0
	{
		if zspeed > 0
		{
		zspeed = 0
		}
	zgravity = 0
	z = 0
	}
	else
	{
	zgravity = 0.03
	}
}