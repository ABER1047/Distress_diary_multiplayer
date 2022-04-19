/// @description Insert description here
// You can write your code in this editor
//show_debug_message(instance_exists(obj_mask_))
if check_n_room(id,code_m.my_ID)
{
shadow_alpha_set_fast(y+14)


if instance_exists(fire_object) && instance_exists(obj_mask_)
{
var ins_place = instance_place(obj_mask_.x,obj_mask_.y,fire_object)
	if ins_place > 0
	{
		if ins_place.y = ins_place.z
		{
		own_value --
			if own_value <= 0
			{
			instance_destroy()
			}
		}
	}

	if !place_meeting(obj_mask_.x,obj_mask_.y,fire_object)
	{
		if own_value < 1500
		{
		own_value += 5
		}
	}
}



if someone_is_looting > 0
{
image_index = origin_img_ind+1
}
else
{
image_index = origin_img_ind
}



var my_p = get_my_p(global.nickname,0)
if (opening_myself > 0 || someone_is_looting = -1)
{
	if interactable_now = 1
	{
	var max_t_val = max_int_val
		if someone_is_looting > 0
		{
		max_t_val = 0
		}
	
		if check_interactable(ord("F"),max_t_val)
		{
		get_player_angle(my_p)//automatic_loots
			if (origin_img_ind != 20 && origin_img_ind != 22)
			{
			var c_x = obj_camera.v_x/1280
			var s_w = camera_get_view_width(view_camera[0])
			var center_yy = (c_x*(ysize)*65)/2
				
				//자동 아이템 루트 생성 시스템 도입됨
				if opened_bp != 1 && automatic_loots = 1
				{
				opened_bp = 1
				
				automatic_loot_selector(-4)
				}
			inv_system_sect4(xsize,ysize,item_name,s_w,center_yy);
			}
	
			if check_item_in_inv("Empty bottle","Stash",0) > 0
			{
				if origin_img_ind = 20
				{
				decrease_item_num_in_inv("Empty bottle","Stash",1,0,0);
				}
	
				if origin_img_ind = 22
				{
				decrease_item_num_in_inv("Empty bottle","Stash",1,0,0);
				}
			}
			
		opening_myself = 1;
		someone_is_looting *= -1;
		
			if someone_is_looting = 1
			{
				if sfx_type = 1
				{
				play_sfx(backpack_sfx,0,0.3)
				}
				else
				{
				play_sfx(chest_sfx,0,0.3)
				}
			}
		}
	}
	else
	{
		if bp_ != noone
		{
			if (origin_img_ind != 20 && origin_img_ind != 22)
			{
			inv_system_sect4(xsize,ysize,item_name,-4,-4)
			someone_is_looting = -1;
			}
		}
	}
}

if someone_is_looting = -1
{
opening_myself = 0
}



if (check_s_is_looting != someone_is_looting)
{
//can_send_info ++;
	//if (can_send_info > 2)
	//{
	check_s_is_looting = someone_is_looting;
	looting_now(someone_is_looting);
	show_debug_message(someone_is_looting)
	can_send_info = 0
	//}
}

if someone_is_looting > 0
{
	if image_alpha > 0
	{
	image_alpha -= 0.1
	}
}
else
{
	if image_alpha < 1
	{
	image_alpha += 0.1
	}
}

}
else
{
instance_destroy(obj_mask_)

//show_debug_message("obj_mask_")

	if bp_ != noone
	{
		if (origin_img_ind != 20 && origin_img_ind != 22)
		{
		inv_system_sect4(xsize,ysize,item_name,-4,-4)
		someone_is_looting = -1;
		}
	}
}