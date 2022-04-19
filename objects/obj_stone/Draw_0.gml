/// @description Insert description here
// You can write your code in this editor
if check_n_room(id,code_m.my_ID)
{
draw_sprite_ext(sprite_index,image_index,x,y+9,image_xscale,image_yscale,image_angle,c_black,0.25)
draw_self()
//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if (flashalpha > 0)
{
shader_set(shFlash)

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,flashcolor,flashalpha)

shader_reset()
}


if shadow_alpha > 0
{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,shadow_alpha)
}
}