/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i <= 25; i++)
{
	if arrow_img_ind[i] != -4
	{
	//show_debug_message(arrow_angle[i]-45)
		if image_xscale > 0
		{
		draw_sprite_ext(spr_arrow,arrow_img_ind[i],x-arrow_xx[i],y-arrow_yy[i]-z,abs(image_xscale),abs(image_yscale),arrow_angle[i],c_white,image_alpha)
		}
		else
		{
		draw_sprite_ext(spr_arrow,arrow_img_ind[i],x+arrow_xx[i],y-arrow_yy[i]-z,abs(image_xscale),abs(image_yscale),-(270+arrow_angle[i]),c_white,image_alpha)
		}
	}
}

if global.show_hitbox = 1
{
draw_sprite_ext(spr_player_mask,0,x,y,image_xscale,image_yscale,0,c_white,0.3*image_alpha)
}
draw_sprite_ext(spr_shadow,1,x,y,image_xscale,image_yscale,0,c_white,0.2*image_alpha)

draw_sprite_ext(sprite_index,floor(image_index),x,y-z,image_xscale,image_yscale,image_angle,image_blend,(1-wounded%5)*image_alpha)
if bp_sprite != noone && sprite_exists(bp_sprite)
{
draw_sprite_ext(bp_sprite,floor(image_index),x,y-z,image_xscale,image_yscale,image_angle,image_blend,(1-wounded%5)*image_alpha)
}

//draw_text(x,y,string(burning)+" / "+string(floor(image_index)))
if shadow_alpha > 0
{
draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,image_yscale,image_angle,c_black,(1-wounded%5)*shadow_alpha*image_alpha)
}






	if global.nickname = nickname
	{
	var c_x = obj_camera.v_x/1280
	var xx = x+32
	var yy = y-32
	
		if global.charge_gage_alpha > 0
		{
		var set_color = merge_color($FF72FFD2,$FF3A2ECB,global.charging_gage/95)
		draw_sprite_ext(charging_gage_bar,2,xx,yy,c_x,c_x,0,c_white,global.charge_gage_alpha)
		draw_circular_bar(xx,yy,global.charging_gage,100,set_color,14*c_x,global.charge_gage_alpha,4.5*c_x)
		draw_sprite_ext(charging_gage_bar,0,xx,yy,c_x,c_x,0,c_white,global.charge_gage_alpha)
		
			if global.weapon_kind = 3
			{
			draw_text_kl_scale(xx,yy-5,string(total_ammo),64*c_x,9999,global.charge_gage_alpha,c_white,-1,0,font0,c_x*0.3,c_x*0.3,0)
			}
		}

		if global.charged_gage > 2
		{
		var _scale = c_x*(2-global.charged_gage/3)/1.2
		draw_sprite_ext(Sprite53,7*(3-global.charged_gage),xx,yy,_scale,_scale,0,c_white,global.charged_gage-2)
		}

		if global.charge_gage_alpha_sec > 0
		{
		var set_color = merge_color($FF3A2ECB,$FF72FFD2,global.charge_gage_alpha_sec/2)
		draw_sprite_ext(charging_gage_bar,1,xx,yy,c_x,c_x,0,set_color,global.charge_gage_alpha_sec)
		}
	}