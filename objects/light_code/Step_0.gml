/// @description Insert description here
// You can write your code in this editor
if global.night_vision != 0
{
	if surface_exists(global.light_surf_nv)
	{
	var my_p = get_my_p(global.nickname,0)
	var s_x = camera_get_view_x(view_camera[0])
	var s_y = camera_get_view_y(view_camera[0])
	surface_set_target(global.light_surf_nv)
	gpu_set_blendmode(bm_add);
	var xx = my_p.x - s_x
	var yy = my_p.y - s_y

		for(var i = 3; i <= 20; i += 0.5)
		{
		//var alpha_ = image_alpha/i
		var alpha_ = 0.2/i
		draw_sprite_ext(spr_large_circle,0,xx,yy,8/i,8/i,floor(image_angle),c_white,alpha_)
		}
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	}
}


//화면 밝기
if surface_exists(global.light_surf) && global.night_vision = 0 && global.flash_light_on = 1
{
surface_set_target(global.light_surf);
gpu_set_blendmode(bm_add);
draw_sprite_ext(Sprite12,2,0,0,60,60,0,$ffffff,0.02)
gpu_set_blendmode(bm_normal);
surface_reset_target()
}
