/// @description Insert description here
// You can write your code in this editor
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
var s_w = camera_get_view_width(view_camera[0])
var s_h = camera_get_view_height(view_camera[0])
var c_x = obj_camera.v_x/1280


if(chat_alpha > 0)
{
var t_i = received_chat_num
	if (t_i = 0 || activity = 1)
	{
	t_i = 10
	}

	if activity = 1
	{
	draw_set_color(c_black);
	draw_set_alpha(chat_alpha*0.2)
	draw_rectangle(s_x,s_y+s_h,s_x+c_x*450,s_y+s_h-c_x*340,false)
	draw_text_kl_scale(s_x+c_x*16,s_y+s_h-c_x*64,string(chat_entering)+"|",64*c_x,9999,chat_alpha,c_white,0,-1,font0,c_x*0.35,c_x*0.35,0)
	}

	for(var i = 0; i < t_i; i++) 
	{
	draw_text_kl_scale(s_x+c_x*16,s_y+s_h-c_x*(100+i*24),global.chat[i],64*c_x,9999,chat_alpha,c_white,0,-1,font0,c_x*0.35,c_x*0.35,0)
	}
}