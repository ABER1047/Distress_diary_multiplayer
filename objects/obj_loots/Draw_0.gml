/// @description Insert description here
// You can write your code in this editor
if check_n_room(id,code_m.my_ID)
{
draw_sprite_ext(sprite_index,image_index,x,y+9,image_xscale,image_yscale,image_angle,c_black,0.25)
draw_sprite_ext(sprite_index,origin_img_ind,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha*2)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,1-image_alpha)

	if shadow_alpha > 0
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,shadow_alpha)
	}
}
