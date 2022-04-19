/// @description Insert description here
// You can write your code in this editor
if check_n_room(id,code_m.my_ID)
{
shadow_alpha_set_fast(y+56)


	if shadow_alpha > 0
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,shadow_alpha)
	}
}
else
{
instance_destroy(obj_mask_)
}