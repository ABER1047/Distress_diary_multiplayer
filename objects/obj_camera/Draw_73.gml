/// @description Insert description here
// You can write your code in this editor
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
var s_w = camera_get_view_width(view_camera[0])
var s_h = camera_get_view_height(view_camera[0])
var c_x = v_x/1280

//var my_p = get_my_p(global.nickname,0)





//////////////////////////////////////////////////circle bar////////////////////////////////////////////////
if instance_exists(player)
{
var spr_ = spr_hp_bar_remake//spr_hp_bar
var xx2 = s_x+32*c_x
var yy = s_y+32*c_x

draw_sprite_ext(spr_ui,7,xx2,yy+24*c_x,c_x*0.9,c_x*0.9,0,c_white,0.8+0.2*global.warning_hp)
var xx = xx2+32*c_x
draw_sprite_ext(spr_,0,xx,yy,c_x,c_x,0,c_white,1)
draw_sprite_part_ext(spr_,global.hp_bar_state,0,0,sprite_get_width(spr_)*(global.hp_for_draw/global.max_hp),sprite_get_height(spr_),xx,yy,c_x,c_x,c_white,1)

	if global.warning_hp > 0
	{
	shader_set(shFlash)
	//draw_sprite_part_ext(spr_,global.hp_bar_state,0,0,sprite_get_width(spr_)*(global.hp_for_draw/global.max_hp),sprite_get_height(spr_),xx,yy,c_x,c_x,$FF332FC8,global.warning_hp)
	draw_sprite_ext(spr_,global.hp_bar_state,xx,yy,c_x,c_x,0,$FF332FC8,global.warning_hp)
	shader_reset()
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////


	var xx = s_x+32*c_x
	var yy = s_y+160*c_x

	var _now_weight = weight_for_draw-150
	if _now_weight < 0
	{
	_now_weight = 0
	}
	var set_color = merge_color(c_white,$FF3A2ECB,(_now_weight)/600)
	if _now_weight >= 600
	{
	set_color = $FF3A2ECB
	}
	
	draw_circular_bar(xx,yy,1,1,$FF000000,14*c_x*2,weight_alpha*0.85,4.5*c_x*2)
	draw_circular_bar(xx,yy,_now_weight,600,set_color,14*c_x*1.5,hydration_alpha,4.5*c_x*1.1)
	draw_text_kl_scale(xx,yy+24*c_x,string(global.weight/10)+"kg",64*c_x,9999,weight_alpha,set_color,-1,0,font0,c_x*0.4,c_x*0.4,0)
	draw_sprite_ext(spr_ui,0,xx,yy,c_x*0.8,c_x*0.8,0,c_white,weight_alpha)
	
	///목마름
	var yy2 = yy+96*c_x
	var set_color = c_white
	if global.hydration < 50
	{
	set_color = merge_color(c_white,$FF3A2ECB,(50-global.hydration)/40)
	}
	draw_circular_bar(xx,yy2,1,1,$FF000000,14*c_x*1.5,hydration_alpha*0.85,4.5*c_x*1.1)
	draw_circular_bar(xx,yy2,global.hydration,225,set_color,14*c_x*1.5,hydration_alpha,4.5*c_x*1.1)
	draw_sprite_ext(spr_ui,1,xx,yy2,c_x*0.45,c_x*0.45,0,c_white,hydration_alpha)
	
	
	///배고픔
	var yy3 = yy2+64*c_x
	var set_color = c_white
	if global.hunger < 60
	{
	set_color = merge_color(c_white,$FF3A2ECB,(60-global.hunger)/40)
	}
	draw_circular_bar(xx,yy3,1,1,$FF000000,14*c_x*1.5,hunger_alpha*0.85,4.5*c_x*1.1)
	draw_circular_bar(xx,yy3,global.hunger,400,set_color,14*c_x*1.5,hunger_alpha,4.5*c_x*1.1)
	draw_sprite_ext(spr_ui,2,xx,yy3,c_x*0.45,c_x*0.45,0,c_white,hunger_alpha)
	
	
	///체온
	var yy4 = yy3+64*c_x
	var set_color = c_white
	if temp_for_draw < 50
	{
	set_color = merge_color(c_white,$FFF9C05C,(50-temp_for_draw)/80)
	}
	if temp_for_draw > 80 && temp_for_draw <= 100
	{
	set_color = merge_color(c_white,$FF3A2ECB,(temp_for_draw-80)/40)
	}
	if temp_for_draw > 100
	{
	set_color = $FF3A2ECB
	}
	draw_circular_bar(xx,yy4,1,1,$FF000000,14*c_x*1.5,temperature_alpha*0.85,4.5*c_x*1.1)
	draw_circular_bar(xx,yy4,temp_for_draw,100,set_color,14*c_x*1.5,temperature_alpha,4.5*c_x*1.1)
	draw_sprite_ext(spr_ui,3,xx,yy4,c_x*0.45,c_x*0.45,0,c_white,temperature_alpha)
	
	
	///지침
	var yy5 = yy4+64*c_x
	var set_color = c_white
	if global.tired > 70 && global.tired <= 100
	{
	set_color = merge_color(c_white,$FF3A2ECB,(70-global.tired)/40)
	}
	else
	{
	set_color = $FF3A2ECB
	}
	draw_circular_bar(xx,yy5,1,1,$FF000000,14*c_x*1.5,tired_alpha*0.85,4.5*c_x*1.1)
	draw_circular_bar(xx,yy5,global.tired,100,set_color,14*c_x*1.5,tired_alpha,4.5*c_x*1.1)
	draw_sprite_ext(spr_ui,4,xx,yy5,c_x*0.45,c_x*0.45,0,c_white,tired_alpha)
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	for(var i = 0; i < 10; i++)
	{
		if global.disp_got_item_alpha[i] > 0
		{
		draw_set_alpha(global.disp_got_item_alpha[i]*0.8)
		draw_set_color(c_black)
		draw_line_width(s_x+s_w,s_y+s_h-c_x*(64+i*48),s_x+s_w-c_x*256,s_y+s_h-c_x*(64+i*48),48*c_x)
		draw_text_kl_scale(s_x+s_w-c_x*24,s_y+s_h-c_x*(72+i*48),string(global.disp_got_item[i]),64*c_x,9999,global.disp_got_item_alpha[i],c_white,0,1,font0,c_x*0.4,c_x*0.4,0)
	
		var xx = s_x+s_w-c_x*256
		var yy = s_y+s_h-c_x*(64+i*48)
		shader_set(shFlash)
		draw_sprite_ext(global.disp_got_item_spr[i],global.disp_got_item_ind[i],xx-3*0.7,yy,c_x,c_x,0,c_white,global.disp_got_item_alpha[i])
		draw_sprite_ext(global.disp_got_item_spr[i],global.disp_got_item_ind[i],xx,yy-3*0.7,c_x,c_x,0,c_white,global.disp_got_item_alpha[i])
		draw_sprite_ext(global.disp_got_item_spr[i],global.disp_got_item_ind[i],xx+3*0.7,yy,c_x,c_x,0,c_white,global.disp_got_item_alpha[i])
		draw_sprite_ext(global.disp_got_item_spr[i],global.disp_got_item_ind[i],xx,yy+3*0.7,c_x,c_x,0,c_white,global.disp_got_item_alpha[i])
		shader_reset()

		draw_sprite_ext(global.disp_got_item_spr[i],global.disp_got_item_ind[i],xx,yy,c_x,c_x,0,c_white,global.disp_got_item_alpha[i])
		}
	}
}










//////////////////////////////////////////////////////////////////////////////////////////////////////////



if global.blackout_screen > 0
{
draw_set_alpha(global.blackout_screen)
draw_set_color(c_black)
draw_rectangle(s_x-320,s_y-320,s_x+s_w+320,s_y+s_h+320,false)
}