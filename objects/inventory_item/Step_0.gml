/// @description Insert description here
// You can write your code in this editor
var c_x = obj_camera.v_x/1280

/////////////////////////////////////////////////////////////////////////
image_xscale = c_x*oxsize
image_yscale = c_x*oysize

if !instance_exists(owner_) || owner_ < 0
{
	owner_ = saved_owner_;
}

if !instance_exists(saved_owner_)
{
	instance_destroy()
}



if rd_gb_timer > 0
{
	rd_gb_timer ++
	if rd_gb_timer > 20
	{
		rd_gb_timer = 0
	}
}




if ready_for_drag = 1
{
	set_xy()
}


image_angle = -angle_set*90

if (instance_exists(owner_) && ready_grab == 1)
{
	depth = owner_.depth-2
	if grabed = 0 && point_distance(gb_x,gb_y,mouse_x-camera_get_view_x(view_camera[0]),mouse_y-camera_get_view_y(view_camera[0])) > c_x*10
	{
		grabed = 1
		var _sfx = audio_play_sound(draging_item,0,false)
		audio_sound_gain(_sfx,0.1,0)
	}
}



if grabed = 1
{
	x = obj_mouse.x
	y = obj_mouse.y

	if instance_exists(owner_) && place_meeting(x,y,inv_mask)
	{
		var _pl_meeted_ins = instance_place(x,y,inv_mask)
		owner_ = _pl_meeted_ins.owner_
	}
	
	//if place_meeting(x,y,inv_mask_cp)
	//{
	//var _pl_meeted_ins = instance_place(x,y,inv_mask_cp)
	//	if _pl_meeted_ins.owner_ = owner_
	//	{
	//	cannot_place = 1
	//	}
	//}
	
	if keyboard_check(vk_control)
	{
		angle_set = b_angle_set
	}
	

	if !mouse_check_button(mb_right) && !keyboard_check(vk_control)
	{
		if keyboard_check_pressed(ord("R"))
		{
			angle_set ++
			if angle_set > 1
			{
				angle_set = 0
			}
		
			if angle_set = 0
			{
				xsize = oxsize
				ysize = oysize
			}
			else
			{
				xsize = oysize
				ysize = oxsize
			}
		}
	}
}
else
{
	b_angle_set = angle_set
	if (instance_exists(owner_))
	{
		if xsize%2 = 0
		{
			x = owner_.x + (inv_x*65+32)*c_x
		}
		else
		{
			x = owner_.x + inv_x*65*c_x
		}
	
		if ysize%2 = 0
		{
			y = owner_.y + (inv_y*65+32)*c_x
		}
		else
		{
			y = owner_.y + inv_y*65*c_x
		}
	}

	if global.grabed = 0
	{
		if place_meeting(x,y,obj_mouse)
		{
			ready_for_drag = 1
		}
		else
		{
			ready_for_drag = 0
		}
	}
}

