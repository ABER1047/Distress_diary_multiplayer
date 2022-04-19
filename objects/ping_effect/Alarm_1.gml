/// @description Insert description here
// You can write your code in this editor
var get_ins = instance_position(x,y,pingable_object)
if get_ins >= 0
{
target = get_ins;

	while(1)
	{
		if place_meeting(x,y-t_y_dis,target)
		{
		t_y_dis += 5
		}
		else
		{
		break;
		}
	}
}

var get_ins = instance_position(x,y,ping_effect)
if get_ins >= 0
{
	if get_ins.id != id
	{
	get_ins.time += 125
	}
}

