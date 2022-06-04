/// @description Insert description here
// You can write your code in this editor
/*if surface_exists(global.bubble_surf)
{
draw_outline(global.bubble_surf,1.5)
}
else
{
global.bubble_surf = surface_create(1920,1080)
}*/


if keyboard_check(ord("V")) || keyboard_check(ord("B")) || keyboard_check(ord("N"))
{
var target = obj_mouse
	with(target)
	{
	move_snap(48,48)
	}
draw_sprite_ext(spr_wall_mask,1,target.x,target.y,1,1,0,c_white,0.1)
}

