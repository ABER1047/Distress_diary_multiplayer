/// @description Insert description here
// You can write your code in this editor
if surface_exists(global.blind_outside_map)
{
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
var cal_xscale = image_xscale
var cal_yscale = image_yscale+2
var xx = x-24//-(cal_xscale*24)
var yy = y-96//-(cal_yscale*24)
var y_comp = global.h_m_speed*2
if y_comp < 0
{
y_comp = 0
}
surface_set_target(global.blind_outside_map);
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_wall_mask,1,xx-s_x,yy-s_y-y_comp,cal_xscale,cal_yscale,0,$ffffff,1)
gpu_set_blendmode(bm_normal);
surface_reset_target()
}