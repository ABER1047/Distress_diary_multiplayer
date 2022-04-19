/// @description Insert description here
// You can write your code in this editor
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])

var c_x = obj_camera.v_x/1280
//var __ac = camera_get_view_width(view_camera[0])/1280

if mouse_check_button_pressed(mb_left)
{
var _s_xx = x-35*c_x
var _s_yy = y-(60)*c_x
	if point_in_rectangle(mouse_x,mouse_y,_s_xx,_s_yy,x+(35+(max_width-1)*65)*c_x,y-35*c_x)
	{
	draging_xx = mouse_x-x;
	draging_yy = mouse_y-y;
	show_debug_message("bp_draging");
	}
}

if mouse_check_button_released(mb_left)
{
draging_xx = -4;
draging_yy = -4;
}

if (draging_xx != -4)
{
//show_debug_message(string(0)+" / "+string(c_x)+" / "+string(draging_xx));
t_x = mouse_x-draging_xx;
t_y = mouse_y-draging_yy;
}


mask_ins.image_xscale = (max_width+0.1)*c_x
mask_ins.image_yscale = max_height*c_x
mask_ins.x = x-32*c_x
mask_ins.y = y-32*c_x

/////////////////////////////////////////////////////////////////////

mask_ins_cp_1.image_xscale = max_width*c_x
mask_ins_cp_1.image_yscale = c_x
mask_ins_cp_1.x = x-32*c_x
mask_ins_cp_1.y = y-100*c_x

mask_ins_cp_2.image_xscale = max_width*c_x
mask_ins_cp_2.image_yscale = c_x
mask_ins_cp_2.x = x-32*c_x
mask_ins_cp_2.y = y+((max_height)*65-28)*c_x

/////////////////////////////////////////////////////////////////////

mask_ins_cp_3.image_xscale = c_x
mask_ins_cp_3.image_yscale = max_height*c_x
mask_ins_cp_3.x = x-100*c_x
mask_ins_cp_3.y = y-32*c_x

mask_ins_cp_4.image_xscale = c_x
mask_ins_cp_4.image_yscale = max_height*c_x
mask_ins_cp_4.x = x+((max_width)*65-28)*c_x
mask_ins_cp_4.y = y-32*c_x

x = s_x+t_x*c_x
y = s_y+t_y*c_x

if keyboard_check(movement_key)
{
t_x += (mouse_x - t_x)*0.1
t_y += (mouse_y - t_y)*0.1
}




if !instance_exists(owner)
{
instance_destroy()
}

//if surface_exists(global.light_surf)
//{
//surface_set_target(global.light_surf)
//gpu_set_blendmode(bm_add);
//var xx = x - s_x
//var yy = y - s_y
//draw_set_color(c_white)
//draw_rectangle(xx-35*c_x,yy-(60)*c_x,xx+(35+(max_width-1)*65)*c_x,yy+(35+(max_height-1)*65)*c_x,false)
//gpu_set_blendmode(bm_normal)
//surface_reset_target()
//}