/// @description Insert description here
// You can write your code in this editor
if check_n_room(id,code_m.my_ID)
{
	/*if surface_exists(owner_surface)
	{
	var surf__ = owner_surface
	draw_outline(surf__,1.5)
	}
	else
	{
	
	}*/
	
draw_sprite_ext(spr_shadow,1,x,y,0.6,0.8,0,c_white,0.2*image_alpha)

//draw_set_color(c_red)
//draw_set_alpha(0.8)
//draw_line(x,y,x+lengthdir_x(64,direction),y+lengthdir_y(64,direction))

draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,image_yscale,image_angle,image_blend,image_alpha)


	if (w_alpha1 > 0)
	{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,image_yscale,image_angle,$FF12C8ED,w_alpha1)
	}

	if (w_alpha2 > 0)
	{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,image_yscale,image_angle,c_white,w_alpha2)
	}
	
	if (w_alpha3 > 0)
	{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,image_yscale,image_angle,$FF580EED,w_alpha3)
	}

	shader_reset()


	if shadow_alpha > 0
	{
	draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,image_yscale,image_angle,c_black,shadow_alpha)
	}
}
//draw_text(x,y,timer)
