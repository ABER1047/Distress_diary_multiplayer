/// @description Insert description here
// You can write your code in this editor
if instance_exists(parents)
{
var i = 0
	while(1)
	{
		if instance_place(x,y-i,parents)
		{
		i += 5
		}
		else
		{
		top_y = i;
		break;
		}
	}
}