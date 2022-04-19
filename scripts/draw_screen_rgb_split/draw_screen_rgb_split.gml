// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation

///@param surf_id
///@param duration
function draw_screen_rgb_split(argument0,argument1)
{
surface_copy(argument0,0,0,application_surface)
sepa_power += (-0.01 - sepa_power)*argument1
sepa_alpha += (-0.01 - sepa_alpha)*argument1
	
	if sepa_alpha > 0
	{
	var s_x = camera_get_view_x(view_camera[0])
	var s_y = camera_get_view_y(view_camera[0])
	var c_x = v_x/1280

	var ___ran_x___ = irandom_range(-sepa_power,sepa_power);
	var ___ran_y___ = irandom_range(-sepa_power,sepa_power);
	gpu_set_colorwriteenable( true , false , false , true );
	draw_surface_ext(argument0,s_x+___ran_x___,s_y+___ran_y___,c_x,c_x,0,c_white,sepa_alpha)
	
	var ___ran_x___ = irandom_range(-sepa_power,sepa_power);
	var ___ran_y___ = irandom_range(-sepa_power,sepa_power);
	gpu_set_colorwriteenable( false , true , false , true );
	draw_surface_ext(argument0,s_x,s_y,c_x,c_x,0,c_white,sepa_alpha)
	
	var ___ran_x___ = irandom_range(-sepa_power,sepa_power);
	var ___ran_y___ = irandom_range(-sepa_power,sepa_power);
	gpu_set_colorwriteenable( false , false , true , true );
	draw_surface_ext(argument0,s_x,s_y,c_x,c_x,0,c_white,sepa_alpha)
	gpu_set_colorwriteenable( true , true , true , true );
	}
}