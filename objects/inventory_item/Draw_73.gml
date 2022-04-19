/// @description Insert description here
// You can write your code in this editor
if can_draw = 1
{
cannot_place_reason = ""
var c_x = obj_camera.v_x/1280
if ready_for_drag = 1
{
//draw_set_font(font02)
//draw_set_alpha(1)
//draw_set_color(c_red)
draw_text(x,y-128,string(oxsize)+" / "+string(oysize)+" / "+string(owner_)+" / "+string(saved_owner_))

//draw_set_font(font02)
//draw_set_alpha(1)
//draw_set_color(c_red)
//draw_text(x,y+128,string(inv_x)+" , "+string(inv_y)+" / "+string(replace_inv_x)+" , "+string(replace_inv_y))
//draw_text(x,y+128,string(xsize)+" , "+string(ysize)+" / "+string(oxsize)+" , "+string(oysize)+" , "+string(angle_set))
//if opened_bp = 1
//{
//draw_text(x,y+233,string(in_bp_item_name[0,0])+" / "+string(in_bp_item_name[1,0])+" / "+string(in_bp_item_name[2,0]))
//}
	
	if position_meeting(__xx,__yy,inv_mask)
	{
		if !place_meeting(__xx,__yy,inventory_item) && !place_meeting(__xx,__yy,inv_mask_cp)
		{
		cannot_place = 0
		replace_inv_x = _a1
		replace_inv_y = _a2
		}
		
		if grabed = 1 && (mouse_check_button(mb_left) || mouse_check_button(mb_right))
		{
			if (owner_ = saved_owner_ && inv_x = replace_inv_x && inv_y = replace_inv_y && angle_set = b_angle_set) || (bp_ != noone && bp_ = owner_)
			{
			cannot_place_reason = "Cannot place same place"
			stacking_able = 1
			cannot_place = 1
			}
			else
			{
			stacking_able = 0
			cannot_place = 0
			}
		}
		
		if place_meeting(__xx,__yy,inventory_item)
		{
		var pl_item = instance_place(__xx,__yy,inventory_item)
			if pl_item.sprite_index = spr_stackables && pl_item.image_index = image_index
			{
			cannot_place = 0
			}
			else
			{
			cannot_place = 1
			}
		}
		
		if place_meeting(__xx,__yy,inv_mask_cp)
		{
		cannot_place = 1
		}
		
		if (sprite_index = spr_backpack && check_empty = 0 && saved_owner_ != owner_)
		{
		cannot_place = 1
		cannot_place_reason = "Cannot place when it has item inside"
		}
		
		if cannot_place = 1
		{
		draw_set_color(c_red)
		}
		else
		{
			if grabed = 1
			{
			draw_set_color(c_green)
			}
			else
			{
			draw_set_color(c_white)
			}
		}
		
	draw_set_alpha(0.3)
	draw_rectangle(__xx-32*c_x*xsize,__yy-32*c_x*ysize,__xx+32.1*c_x*xsize,__yy+32.1*c_x*ysize,false)
	}
	else
	{
	cannot_place_reason = "Outside of place"
	cannot_place = 1
	}
}
else
{
var _ins = global.grabed
	if instance_exists(_ins)
	{
		if sprite_index = _ins.sprite_index && image_index = _ins.image_index && (stack_num+_ins.stack_num <= max_stack_num)
		{
		draw_set_color(c_green)
		draw_set_alpha(0.3)
		draw_rectangle(__xx-32*c_x*xsize,__yy-32*c_x*ysize,__xx+32.1*c_x*xsize,__yy+32.1*c_x*ysize,false)
		}
	}
}


if moving_item_now = 0
{
	if image_xscale > image_yscale
	{
	var set_scale = image_yscale
	}
	else
	{
	var set_scale = image_xscale
	}

	if grabed = 0
	{
	var x_scale = xsize/2
	var y_scale = ysize/2

	draw_set_alpha(0.1)
	draw_set_color(bg_color)
	draw_rectangle(x-c_x*64*x_scale,y-c_x*64*y_scale,x+c_x*65*x_scale,y+c_x*65*y_scale,false)
	}





var x_scale = xsize/3*2
var y_scale = ysize*32

	if grabed = 0
	{
		if sprite_exists(sprite_index)
		{
		draw_sprite_ext(sprite_index,image_index,x,y,set_scale,set_scale,image_angle,image_blend,image_alpha)
		}
	
	draw_text_kl_scale(x-c_x*(x_scale*48-4),y-c_x*(y_scale-4),total_string,64*c_x,9999,image_alpha,c_white,0,-1,font0,c_x*0.3,c_x*0.3,0)
		if stack_num > 1
		{
		draw_text_kl_scale(x+c_x*(x_scale*48-6),y+c_x*(y_scale-16),string(stack_num),64*c_x,9999,image_alpha,c_white,0,1,font0,c_x*0.3,c_x*0.3,0)
		}
	}
	else
	{
		if b_angle_set = 0
		{
		var _xsize = oxsize
		var _ysize = oysize
		}
		else
		{
		var _xsize = oysize
		var _ysize = oxsize
		}

		if _xsize%2 = 0
		{
		var __xx2 = saved_owner_.x + (inv_x*65+32)*c_x
		}
		else
		{
		var __xx2 = saved_owner_.x + (inv_x*65)*c_x
		}
		
		if _ysize%2 = 0
		{
		var __yy2 = saved_owner_.y + (inv_y*65+32)*c_x
		}
		else
		{
		var __yy2 = saved_owner_.y + (inv_y*65)*c_x
		}
		
		if sprite_exists(sprite_index)
		{
		draw_sprite_ext(sprite_index,image_index,__xx2,__yy2,set_scale,set_scale,-b_angle_set*90,image_blend,image_alpha*0.8)
		draw_sprite_ext(sprite_index,image_index,x,y,set_scale,set_scale,image_angle,image_blend,image_alpha*0.8)
		}
	
		if keyboard_check(vk_control)
		{
		draw_text_kl_scale(x+c_x*(x_scale*48-6),y+c_x*(y_scale-16),string(floor(stack_num/2)),64*c_x,9999,image_alpha,c_white,0,1,font0,c_x*0.3,c_x*0.3,0)
		}
		else
		{
			if now_move_stacks > 1
			{
			draw_text_kl_scale(x+c_x*(x_scale*48-6),y+c_x*(y_scale-16),string(now_move_stacks),64*c_x,9999,image_alpha,c_white,0,1,font0,c_x*0.3,c_x*0.3,0)
			}
			else
			{
				if cannot_place = 1 && cannot_place_reason != ""
				{
				draw_text_kl_scale(x+c_x*(x_scale*48-6),y+c_x*(y_scale-16),cannot_place_reason,64*c_x,9999,image_alpha,c_white,0,-1,font0,c_x*0.3,c_x*0.3,0)
				}
			}
		}
	}
}

//draw_sprite_ext(Sprite24,0,x,y,image_xscale,image_yscale,0,c_white,0.1)
}