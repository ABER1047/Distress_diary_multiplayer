/// @description Insert description here
// You can write your code in this editor
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
var s_w = camera_get_view_width(view_camera[0])
var s_h = camera_get_view_height(view_camera[0])
var c_x = v_x/1280
var my_p = get_my_p(global.nickname,0)

if surface_exists(surf_screen)
{
draw_screen_rgb_split(surf_screen,0.1);
	if global.night_vision > 0
	{
	draw_surface_ext(surf_screen,s_x,s_y,c_x,c_x,0,$FFFAFF00,1)
	}

	if sc_blackout_ef_alpha > 0
	{
	//화면 흑백
	shader_set(shader)
	draw_surface_ext(surf_screen,s_x,s_y,c_x,c_x,0,c_white,sc_blackout_ef_alpha)
	shader_reset()
	}
}
else
{
surf_screen = surface_create(s_w,s_h)
}


if global.in_smoke_alpha > 0
{
draw_set_alpha(global.in_smoke_alpha*0.1)
draw_set_color(global.in_smoke)
draw_line_width(s_x,s_y,s_x+s_w,s_y,s_h*2)
}


/////////////////////////////////////////////////debug mode///////////////////////////////////////////////////
if global.show_hitbox = 1
{
draw_set_color(c_blue)
draw_set_alpha(0.5)
draw_circle(x,y,3,false)

	if instance_exists(my_p)
	{
	draw_text_kl_scale(s_x+s_w-c_x*32,s_y+c_x*32,"v_x : "+string(v_x)+"\n\n v_y : "+string(v_y)+"\n\n view_angle : "+string(global.view_angle_)+"\n\n global.guide_message : "+string(global.guide_message)+"\n\n real_shake_y : "+string(global.real_shake_y)+"\n\n last_angle : "+string(my_p.last_angle)+"  light_dir : "+string(my_p.light_dir)+"\n\n ins_num : "+string(instance_number(all))+"\n\n global.in_smoke : "+string(global.in_smoke_alpha)+"\n\n burning : "+string(get_my_p(global.nickname,0).burning)+"\n\n speed(real) : "+string(global.v_m_speed*100)+", "+string(global.h_m_speed*100)+"\n\n speed(virtual) : "+string(get_my_p(global.nickname,0).speed_sec*100),64*c_x,9999,image_alpha,c_white,0,1,font0,c_x*0.3,c_x*0.3,0)
	}
}





if global.guide_message_alpha > 0
{
var scale_set = global.guide_scale;
var xx_o = s_x+s_w*0.5;
var yy_o = s_y+s_h*0.8;
var cal_yy = (27*c_x)*scale_set
var text_length_cal = (string_length(global.guide_message)*10*c_x)*scale_set
draw_set_alpha(global.guide_message_alpha*0.7)
draw_set_color(c_black)
draw_rectangle(xx_o-text_length_cal, yy_o-cal_yy, xx_o+text_length_cal, yy_o+cal_yy, false);
draw_text_kl_scale(xx_o+c_x*16, yy_o-8*c_x,global.guide_message,64*c_x,9999,global.guide_message_alpha,c_white,0,0,font0,c_x*0.4*scale_set,c_x*0.4*scale_set,0)
draw_sprite_ext(spr_ui,global.guide_icon,xx_o-text_length_cal*0.75,yy_o,c_x*0.8*scale_set,c_x*0.8*scale_set,0,c_white,global.guide_message_alpha)
}