/// @description Insert description here
// You can write your code in this editor
if check_n_room(id,code_m.my_ID)
{
	if set_smoke_val = 1
	{
	var n_draw_check = 0
		for(var i = 0; i < smoke_size_cal; i++)
		{
			if check_position_inside_view(x+xx[i],y+yy[i],0) = true
			{
			n_draw_check ++
			var cal_dis = (1-point_distance(xx[i],yy[i],0,0)/smoke_size)*4
				if cal_dis > 0 && alpha[i] > 0
				{
				draw_sprite_ext(Sprite53,0,x+xx[i],y+yy[i],cal_dis*randomize_scale[i],cal_dis*randomize_scale[i],0,image_blend,image_alpha*alpha[i])
				}
			}
		}

		if n_draw_check = 0
		{
		stop_step_cal = 1
		}
		else
		{
		stop_step_cal = 0
		}
	}



	if global.show_hitbox > 0
	{
	draw_set_alpha(0.5)
	draw_set_color(c_gray)
	draw_circle(x,y,smoke_size,false)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_green,0.25)
	}
}