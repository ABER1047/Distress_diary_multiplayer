/// @description Insert description here
// You can write your code in this editor
if check_n_room(id,code_m.my_ID)
{
shadow_alpha_set_fast(y+14)

flashalpha += (-0.01 - flashalpha)*0.1

if place_meeting(x,y,pickaxe_mask)
{
var ins_ = instance_place(x,y,pickaxe_mask);
flashalpha = 1;
hp -= ins_.pickaxe_power;
event_user(0);
var _ins_pl = instance_place(x,y,pickaxe_mask);
instance_destroy(_ins_pl);

	repeat(irandom_range(7,10))
	{
	
	var z_set = y+irandom_range(-16,16)
	create_spark_effect(x+irandom_range(-8,8),z_set+1,z_set,0,1,c_white,$FF00D2FE,irandom_range(-50,-80)/10,sign(_ins_pl.x - x)*irandom_range(0,4),1)
	}


	if ins_.sound_off = 0
	{
	var _sfx = audio_play_sound(choose(pickaxe_1,pickaxe_2,pickaxe_3),0,false)
	audio_sound_gain(_sfx,0.1,0)
	}

	if optimizing_effect(2)
	{
		repeat(irandom_range(1,3))
		{
		var _st_ef = instance_create_depth(x,y+8,depth,stone_flake_effect)
		_st_ef.image_index = irandom_range(0,3)
		_st_ef.z = y+irandom_range(-8,24)
		_st_ef.hspeed = irandom_range(-10,10)/10
		_st_ef.vspeed = -irandom_range(0,3)
		}
	}
}


if hp < 0
{
	if (image_index = 2 || image_index = 3)
	{
	var my_p = get_my_p(global.nickname,0)
	
	
	var spr__ = choose(spr_backpack,spr_drink,spr_comp);
	var img__ = irandom_range(0,99);
	var dir__ = my_p.last_angle*90+180;
	var item_name__ = irandom_range(100000,999999);
	var xsize__ = irandom_range(1,5);
	var ysize__ = irandom_range(1,5);
	var _bp = 0;
	var pos_x__ = global.n_pos_x[code_m.my_ID];
	var pos_y__ = global.n_pos_y[code_m.my_ID];
	if spr__ = spr_backpack
	{
	_bp = 1
	}
	
	var _item_ins = create_item(x,y,spr__,img__,dir__,2,-4,item_name__,xsize__,ysize__,1,1,_bp,pos_x__,pos_y__,-4)
	
		if _bp = 1
		{
		var _max_width = irandom_range(1,5)
		var _max_height = irandom_range(1,5)
		_item_ins.max_width = _max_width
		_item_ins.max_height = _max_height
			for(var i = 0; i < (_max_width); i++)
			{
				for(var ii = 0; ii < (_max_height); ii++)
				{
				_item_ins.in_bp_item_spr[i,ii] = -4;
				_item_ins.in_bp_item_img_ind[i,ii] = -4;
				_item_ins.in_bp_item_xsize[i,ii] = -4;
				_item_ins.in_bp_item_ysize[i,ii] = -4;
				_item_ins.in_bp_item_oxsize[i,ii] = -4;
				_item_ins.in_bp_item_oysize[i,ii] = -4;
				_item_ins.in_bp_item_angle[i,ii] = -4;
				_item_ins.in_bp_item_color[i,ii] = -4;
				_item_ins.in_bp_item_name[i,ii] = -4;
				_item_ins.in_bp_item_stacks[i,ii] = -4;
				_item_ins.in_bp_item_max_stacks[i,ii] = -4;
				_item_ins.in_bp_item_sname[i,ii] = -4;
				};
			};
		}
	}



instance_destroy()
	
	if optimizing_effect(2)
	{
		repeat(irandom_range(1,3))
		{
		var _st_ef = instance_create_depth(x,y+8,depth,stone_flake_effect)
		_st_ef.image_index = irandom_range(0,3)
		_st_ef.z = y+irandom_range(-8,24)
		_st_ef.hspeed = irandom_range(-10,10)/10
		_st_ef.vspeed = -irandom_range(0,3)
		}
	}
}
}
else
{
instance_destroy(obj_mask_)
}