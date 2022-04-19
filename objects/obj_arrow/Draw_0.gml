/// @description Insert description here
// You can write your code in this editor
if check_n_room(id,code_m.my_ID)
{
if image_index != 4
{
	for(var i = 0; i <= 25; i++)
	{
		if alpha[i] > 0
		{
		draw_set_alpha(alpha[i])
		draw_set_color(c_white)
		draw_line_width(x,y,xx[i],yy[i],2*alpha[i])
		}
	}

draw_self()
}
else
{
	if global.show_hitbox > 0
	{
	draw_set_alpha(1)
	draw_set_color(c_red)
	draw_circle(x,y,image_xscale*5,false)
	draw_line_width(x,y,xstart,ystart,1)
	}
}
}