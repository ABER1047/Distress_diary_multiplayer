/// @description Insert description here
// You can write your code in this editor
shadow_alpha_set_fast(y+24)

if check_n_room(id,code_m.my_ID)
{
	if activate > 0
	{
	timer ++


		if !instance_exists(_light_)
		{
		_light_ = instance_create_depth(x,y,depth,obj_light)
		_light_.p_id = id
		_light_.alpha = 0.5
		_light_.sprite_index = spr_large_circle
		_light_.image_blend = $FF4BACFF
		_light_.light_type = 0
		_light_.image_xscale = 10
		_light_.image_yscale = 10
		}
	
	
		if timer > 6
		{
			repeat(irandom_range(0,2))
			{
		
			create_buble_effect(irandom_range(10,100)/250,-90+irandom_range(-15,15),0,choose(-1)*irandom_range(1,100)/10,0.08,0.08,$FF00D2FE,$FF076BFE,1.5,$FF737272,x+irandom_range(-6,6),y-32,depth-1,1,true,false)
			}
	
			repeat(irandom_range(0,2))
			{
		
			create_buble_effect(irandom_range(10,100)/250,-90+irandom_range(-15,15),0,choose(-1)*irandom_range(1,100)/10,0.07,0.07,c_white,$FF00D2FE,1.5,$FF342F32,x+irandom_range(-6,6),y-32,depth-1,1,true,false)
			}
		timer = irandom_range(-6,0)
		}
	}
	else
	{
		if instance_exists(_light_)
		{
		instance_destroy(_light_)
		}
	}

	if shadow_alpha > 0
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,shadow_alpha)
	}










	if check_interactable(ord("F"),max_int_val)
	{
	var my_p = get_my_p(global.nickname,0)
	var dis_ = point_distance(x,y,my_p.x,my_p.y)
		if dis_ <= 65
		{
		sfx_volume = (1-dis_/128)*0.2
		sfx = play_sfx(frame_thrower,0,sfx_volume)
		activate ++

		if activate > 1
		{
		activate = 0
		}

		event_user(0);
		}
	}

	if sfx != -4
	{
	sfx_volume += (-0.01 - sfx_volume)*0.05
	audio_sound_gain(sfx,sfx_volume,0)
		if sfx_volume <= 0
		{
		sfx = -4
		}
	}
}
else
{
instance_destroy(obj_mask_)
	if instance_exists(_light_)
	{
	instance_destroy(_light_)
	}
}