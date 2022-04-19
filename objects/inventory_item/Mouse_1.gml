/// @description Insert description here
// You can write your code in this editor
if stacking_able = 1
{
	if global.grabed != 0 && !mouse_check_button(mb_left)
	{
		if stack_num-1 > now_move_stacks
		{
		item_move_stack_t --
			if item_move_stack_t < 0
			{
			play_sfx(draged_item,0,0.05)

			now_move_stacks ++
				if max_item_move_stack_t >= 2
				{
				max_item_move_stack_t -= 1
				}
			item_move_stack_t = max_item_move_stack_t
			}
		}
	}
}
else
{
item_move_stack_t = 13
max_item_move_stack_t = 13
}