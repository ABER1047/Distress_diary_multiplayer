/// @description Insert description here
// You can write your code in this editor
img_ind += image_speed
if (image_index >= image_number || image_yscale <= 0)
{
instance_destroy()
}

if light_type = 1 && surface_exists(global.light_surf)
{
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
surface_set_target(global.light_surf)
gpu_set_blendmode(bm_add);
draw_set_color(c_white)
draw_set_alpha(1)
draw_sprite_ext(sprite_index,image_index,x-s_x,y-s_y,image_xscale,image_yscale,image_angle,string(sec_col),sec_alpha*image_alpha)
gpu_set_blendmode(bm_normal)
surface_reset_target()
}

//depth = -y

speed += (0 - speed)*speed_dec

image_xscale += (-0.01 - image_xscale)*des_speed*0.1
image_yscale += (-0.01 - image_yscale)*des_speed*0.1

//depth = -(y+32*image_yscale)

//image_alpha += (-0.01 - image_alpha)*des_speed*0.5
sec_alpha += (-0.01 - sec_alpha)*des_speed*1.2



if img_ind > image_number+1
{
speed += (0 - speed)*speed_dec
thi_col_able = 1

image_xscale += (-0.01 - image_xscale)*des_speed*0.5
image_yscale += (-0.01 - image_yscale)*des_speed*0.5

	if img_ind > 11
	{
	image_speed = 0.8
	image_xscale += (-0.01 - image_xscale)*des_speed*0.5
	image_yscale += (-0.01 - image_yscale)*des_speed*0.5
	}
	else
	{
	image_speed = 0.1
	image_index = 0
	}
}



if pass_block = false
{
	if place_meeting(x,y,wall_parents)
	{
	colition = 1
	}
	
	if colition > 0
	{
	speed += (0 - speed)*0.3
	}
}

if auto_depth = true
{
depth = -(y+image_yscale*64)
}