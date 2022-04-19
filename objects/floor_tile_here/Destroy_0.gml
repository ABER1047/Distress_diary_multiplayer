/// @description Insert description here
// You can write your code in this editor
if bottom_wall != -4
{
instance_destroy(_wall_d)
instance_destroy(bottom_wall)
instance_destroy(left_wall)
instance_destroy(right_wall)

instance_destroy(goto_top)
instance_destroy(goto_right)
instance_destroy(goto_bot)
instance_destroy(goto_left)
}
