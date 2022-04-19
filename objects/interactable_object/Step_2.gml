/// @description Insert description here
// You can write your code in this editor
if interactable_now != -1
{
	var my_p = get_my_p(global.nickname,0)
	if point_distance(x,y,my_p.x,my_p.y) <= 65
	{
	var saved_id = id;
		with(interactable_object)
		{
		interactable_now = 0
			if check_n_room(self,code_m.my_ID)
			{
				if (point_distance(x,y,my_p.x,my_p.y) < point_distance(saved_id.x,saved_id.y,my_p.x,my_p.y))
				{
				saved_id = self.id;
				}
			}
		}
		
	saved_id.interactable_now = 1
	}
	else
	{
	interactable_now = 0
	interaction_time = 0
	}
}