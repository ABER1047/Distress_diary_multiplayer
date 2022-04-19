/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y-t_y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)


if instance_exists(target)
{
shader_set(shFlash)
draw_sprite_ext(target.sprite_index,target.image_index,target.x,target.y,target.image_xscale,target.image_yscale,target.image_angle,c_white,alpha2)
shader_reset()
}
else
{
draw_sprite_ext(sprite_index,9,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha*(1 - abs(64 - t_y)/64))
}

//draw_set_alpha(1)
//draw_text(x,y,string(image_alpha)+" / "+string(alpha2))