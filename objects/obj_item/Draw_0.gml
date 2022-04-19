/// @description Insert description here
// You can write your code in this editor

if check_n_room(id,code_m.my_ID)
{
//draw_set_color(c_red)
//draw_set_alpha(0.7)
//draw_line(x,y,x+lengthdir_x(64,direction),y+lengthdir_y(64,direction))
draw_sprite_ext(spr_shadow,1,x,y,0.6,0.7,0,c_white,0.2*image_alpha)

var yy = y-z-5
shader_set(shFlash)

draw_sprite_ext(sprite_index,image_index,x-3*0.7,yy,image_xscale,image_yscale,image_angle,c_white,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,yy-3*0.7,image_xscale,image_yscale,image_angle,c_white,image_alpha)
draw_sprite_ext(sprite_index,image_index,x+3*0.7,yy,image_xscale,image_yscale,image_angle,c_white,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,yy+3*0.7,image_xscale,image_yscale,image_angle,c_white,image_alpha)

if shadow_alpha > 0
{
draw_sprite_ext(sprite_index,image_index,x-3*0.7,yy,image_xscale,image_yscale,image_angle,c_black,shadow_alpha)
draw_sprite_ext(sprite_index,image_index,x,yy-3*0.7,image_xscale,image_yscale,image_angle,c_black,shadow_alpha)
draw_sprite_ext(sprite_index,image_index,x+3*0.7,yy,image_xscale,image_yscale,image_angle,c_black,shadow_alpha)
draw_sprite_ext(sprite_index,image_index,x,yy+3*0.7,image_xscale,image_yscale,image_angle,c_black,shadow_alpha)
}
shader_reset()



if (!surface_exists(surf))
{
surf = surface_create(256, 256);
}

//Set target
surface_set_target(surf);

draw_sprite_ext(sprite_index,image_index,sprite_xoffset,sprite_yoffset,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,sprite_xoffset,sprite_yoffset,image_xscale,image_yscale,image_angle,c_black,shadow_alpha)


//Draw overlap
gpu_set_colorwriteenable(1, 1, 1, 0);
shader_reset()


var _xx = lengthdir_x(sprite_width,45)
var _yy = lengthdir_y(sprite_height,45)
var _xyplus = 16*image_xscale
draw_set_alpha(0.8)
draw_set_color(c_white)
draw_line_width(_xx+x_plus,_yy+y_plus,-_xx+x_plus,-_yy+y_plus,18*image_xscale)
draw_line_width(_xx+x_plus+_xyplus,_yy+y_plus+_xyplus,-_xx+x_plus+_xyplus,-_yy+y_plus+_xyplus,9*image_xscale)
//draw_sprite_ext(sOverlay, 0, x_plus, y_plus, 1, 1, 0, -1, 0.6);

gpu_set_colorwriteenable(1, 1, 1, 1);

//Reset target
surface_reset_target();


//Draw surface
draw_surface_ext(surf, x - sprite_xoffset, y-z - sprite_yoffset-5,1,1,image_angle,image_blend,image_alpha);
}

//draw_text(x,y,string(z)+" / "+string(zspeed))

