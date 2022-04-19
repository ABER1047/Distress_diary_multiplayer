/// @description Insert description here
// You can write your code in this editor

//w_alpha += (-0.01 - w_alpha)*0.1
z_grid_gravity()

if check_n_room(id,code_m.my_ID)
{
item_movement()
depth = -(y+13)
shadow_alpha_set(y+13)
var my_p = get_my_p(global.nickname,0)
var _mt_pl = instance_place(x,y,player)
if z = 0 && instance_exists(_mt_pl) && _mt_pl >= 0
{
	if (_mt_pl.z = 0 && my_p.id = _mt_pl.id)
	{
	//var ins_pl = instance_place(x,y,player)
	var _target_bp_owner = code
	var _target_bp = _target_bp_owner.bp_
	var _sizeX = xsize
	var _sizeY = ysize
	var _item_col = c_white
	var _item_name = item_name
	var _stacks = stack_num
	var maximum_stacks = max_stack_num
	var s_name_ = short_name

	var _check_empty = check_inv_empty(_target_bp_owner,_sizeX,_sizeY)
	show_debug_message(string(global.searched_item_xpos)+" , "+string(global.searched_item_ypos))
	
		if _check_empty >= 0
		{
		var _sfx = audio_play_sound(draging_item,0,false)
		audio_sound_gain(_sfx,0.1,0)
		instance_destroy()
			if _item_name != -4
			{
			add_display_got_item(_item_name,sprite_index,image_index,_stacks,_sizeX,_sizeY)
			}
			
			if instance_exists(_target_bp)
			{
			show_debug_message("_check_empty : "+string(_check_empty))
			var _item_id = give_item_inv(sprite_index,image_index,global.searched_empty_angle_set,_sizeX,_sizeY,
			global.searched_item_xpos,global.searched_item_ypos,_target_bp,_item_col,_item_name,_stacks,maximum_stacks,check_empty,short_name);
				if sprite_index = spr_backpack
				{
				_item_id.opened_bp = 1
					for(var i = 0; i < (max_width); i++)
					{
						for(var ii = 0; ii < (max_height); ii++)
						{
						_item_id.in_bp_item_spr[i,ii] = in_bp_item_spr[i,ii];
						_item_id.in_bp_item_img_ind[i,ii] = in_bp_item_img_ind[i,ii];
						_item_id.in_bp_item_xsize[i,ii] = in_bp_item_xsize[i,ii];
						_item_id.in_bp_item_ysize[i,ii] = in_bp_item_ysize[i,ii];
						_item_id.in_bp_item_oxsize[i,ii] = in_bp_item_oxsize[i,ii];
						_item_id.in_bp_item_oysize[i,ii] = in_bp_item_oysize[i,ii];
						_item_id.in_bp_item_angle[i,ii] = in_bp_item_angle[i,ii];
						_item_id.in_bp_item_color[i,ii] = in_bp_item_color[i,ii];
						_item_id.in_bp_item_name[i,ii] = in_bp_item_name[i,ii];
						_item_id.in_bp_item_stacks[i,ii] = in_bp_item_stacks[i,ii];
						_item_id.in_bp_item_max_stacks[i,ii] = in_bp_item_max_stacks[i,ii];
						_item_id.in_bp_item_sname[i,ii] = in_bp_item_sname[i,ii]
						};
					};
				}
			}
			else
			{
			var i = global.searched_item_xpos;
			var ii = global.searched_item_ypos;
			_target_bp_owner.in_bp_item_spr[i,ii] = sprite_get_name(sprite_index);
			show_debug_message(string(sprite_index)+" , "+string(_target_bp_owner.in_bp_item_spr[i,ii]))
			_target_bp_owner.in_bp_item_img_ind[i,ii] = image_index;
			_target_bp_owner.in_bp_item_xsize[i,ii] = _sizeX;
			_target_bp_owner.in_bp_item_ysize[i,ii] = _sizeY;
			_target_bp_owner.in_bp_item_oxsize[i,ii] = _sizeX;
			_target_bp_owner.in_bp_item_oysize[i,ii] = _sizeY;
			_target_bp_owner.in_bp_item_angle[i,ii] = global.searched_empty_angle_set;
			_target_bp_owner.in_bp_item_color[i,ii] = _item_col;
			_target_bp_owner.in_bp_item_name[i,ii] = _item_name;
			_target_bp_owner.in_bp_item_stacks[i,ii] = _stacks;
			_target_bp_owner.in_bp_item_max_stacks[i,ii] = maximum_stacks;
			_target_bp_owner.in_bp_item_sname[i,ii] = s_name_;
			}
		}
	}
}

flashalpha += (-0.01 - flashalpha)*0.1


x_plus += (tx_plus - x_plus)*0.1
y_plus += (ty_plus - y_plus)*0.1

tx_plus += (64 - tx_plus)*0.05
ty_plus += (64 - ty_plus)*0.05

if abs(64 - x_plus) <= 1
{
x_plus = -64
y_plus = -64
tx_plus = -64
ty_plus = -64
}
}



