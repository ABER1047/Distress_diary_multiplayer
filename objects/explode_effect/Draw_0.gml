/// @description Insert description here
// You can write your code in this editor
if destroy_time > 0
{
//show_debug_message("rad/32 "+string(rad/32))
	for(var i = 0; i < 20; i++)
	{
	var calcul_dis = (1 - (point_distance(xx[i],yy[i],0,0)/4-32))
		if calcul_dis > 0
		{
		calcul_dis = 1
		}
	draw_sprite_ext(Sprite53,0,x+xx[i],y+yy[i],calcul_dis*2*abs(image_xscale),calcul_dis*1.5*abs(image_xscale),0,bg_color,0.2*calcul_dis*image_alpha)
	}
}