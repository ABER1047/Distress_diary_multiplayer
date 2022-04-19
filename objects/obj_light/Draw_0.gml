/// @description Insert description here
// You can write your code in this editor

//for high graphics
//if (light_type = 0 && (instance_exists(p_id) && p_id.last_angle = 1))
//{
//draw_set_alpha(1)
//draw_set_color(c_red)
//draw_line_width(x,y,xx2,yy2,3)

//var dis_w = point_distance(x,y,xx2,yy2)/440
//	for(var i = 1; i <= 15; i++)
//	{
//	draw_sprite_ext(Sprite53,0,xx2,yy2-32,dis_w*5/i,dis_w/i,0,c_white,0.1*(1-dis_w))
//	}
//}



if (image_alpha > 0 && global.night_vision != 0)
{
	for(var i = 3; i <= 20; i += 0.5)
	{
	//var alpha_ = image_alpha/i
	var alpha_ = (alpha/i)*image_alpha*4
	draw_sprite_ext(sprite_index,0,x,y,image_xscale/i,image_yscale/i,floor(image_angle),$FFFAFF00,alpha_)
	}
}