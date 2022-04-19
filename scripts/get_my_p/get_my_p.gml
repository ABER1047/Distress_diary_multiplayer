// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation

///@param nickname
///@param return_type
function get_my_p(argument0,argument1)
{
	with(player)
	{
		if (nickname = argument0) || (id = argument0)
		{
			if argument1 = 0
			{
			return id;
			}
			else
			{
			return self.playerID;
			}
		}
	}

return -4;
}