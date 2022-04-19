/// @description Insert description here
// You can write your code in this editor
if destroy_time > 0
{
//show_debug_message("rad/32 "+string(rad/32))
	for(var i = 0; i < 30; i++)
	{
	var calcul_dis = (1 - (point_distance(xx[i],yy[i],0,0)/20))
	var calcul_dis2 = (1 - (point_distance(xx2[i],yy2[i],0,0)/64))
	
	var cal_draw_time = point_distance(xx[i],yy[i],0,0)
	var cal_draw_time2 = point_distance(xx2[i],yy2[i],0,0)
	
		if destroy_time > cal_draw_time
		{
		draw_sprite_ext(Sprite53,0,x+xx[i],y+yy[i],calcul_dis*2*abs(image_xscale),calcul_dis*1.5*abs(image_yscale),0,bg_color,calcul_dis*image_alpha)
		}
	
		if destroy_time > cal_draw_time2
		{
		draw_sprite_ext(Sprite53,0,x+xx2[i],y+yy2[i],calcul_dis2*2*abs(image_xscale),calcul_dis2*1.5*abs(image_yscale),0,bg_color,calcul_dis2*image_alpha)
		}
	}
}