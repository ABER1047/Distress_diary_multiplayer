// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation

//give_item_inv(sprite_index,image_index,image_angle,xsize,ysize,inv_x,inv_y,target_bp)
/// @param sprite_index
/// @param image_index
/// @param image_angle
/// @param xsize
/// @param ysize
/// @param inv_x
/// @param inv_y
/// @param target_bp
/// @param bg_col
/// @param name
/// @param stack_num
/// @param maximun_stack_num
/// @param check_empty
/// @param short_name

function give_item_inv(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9,argument10,argument11,argument12,argument13)
{
var _bp_owner = -4;


if argument7 != -5
{
_bp_owner = argument7.owner;
}
else
{
_bp_owner = self;
}
	
	
	if argument7 != -5
	{
		var _item__ = instance_create_depth(-999,-999,inventory_backpack.depth-1,inventory_item)
		_item__.sprite_index = (argument0);
		_item__.image_index = argument1;
		_item__.image_angle = -argument2*90;
		_item__.angle_set = argument2;
		_item__.short_name = argument13;
		if argument0 = spr_backpack
		{
		var bp_xsize_ = 4;
		var bp_ysize_ = 5;
		_item__.bp_xsize = bp_xsize_;
		_item__.bp_ysize = bp_ysize_;
			for(var i = 0; i < (bp_xsize_); i++)
			{
				for(var ii = 0; ii < (bp_ysize_); ii++)
				{
				_item__.in_bp_item_spr[i,ii] = -4
				_item__.in_bp_item_img_ind[i,ii] = -4
				_item__.in_bp_item_xsize[i,ii] = -4
				_item__.in_bp_item_ysize[i,ii] = -4
				_item__.in_bp_item_oxsize[i,ii] = -4
				_item__.in_bp_item_oysize[i,ii] = -4
				_item__.in_bp_item_angle[i,ii] = -4
				_item__.in_bp_item_color[i,ii] = -4
				_item__.in_bp_item_name[i,ii] = -4
				_item__.in_bp_item_stacks[i,ii] = -4
				_item__.in_bp_item_max_stacks[i,ii] = -4
				_item__.in_bp_item_sname[i,ii] = -4
				};
			};
		}
		if argument2 = 0
		{
		_item__.oxsize = argument3
		_item__.oysize = argument4
		}
		else
		{
		_item__.oxsize = argument4
		_item__.oysize = argument3
		}
		_item__.inv_x = argument5
		_item__.inv_y = argument6
		_item__.replace_inv_x = argument5
		_item__.replace_inv_y = argument6
		_item__.stack_num = argument10
		_item__.max_stack_num = argument11
		_item__.image_xscale = argument3
		_item__.image_yscale = argument4
		_item__.xsize = argument3
		_item__.ysize = argument4
		_item__.owner_ = argument7
		_item__.saved_owner_ = argument7
		_item__.check_empty = argument12

		if argument8 = 1
		{
		_item__.bg_color = $FFFF9EC0
		}
		else if argument8 = 2
		{
		_item__.bg_color = $FFFD9DFF
		}
		else if argument8 = 3
		{
		_item__.bg_color = $FFAB9DFF
		}
		else if argument8 = 4
		{
		_item__.bg_color = $FF9DDFFF
		}
		else if argument8 = 0
		{
		_item__.bg_color = c_white
		}
		else
		{
		_item__.bg_color = argument8
		}
		_item__.item_name = argument9
		_item__.depth = argument7.depth-1
	}



	if (argument3 > 1 || argument4 > 1)
	{
	var can_do_this_code = 1
	var _xs = (argument3+1)%2
	var _ys = (argument4+1)%2

	//코드 수정 필요
	var _xx = -floor(argument3/2)+_xs
	var _yy = -floor(argument4/2)+_ys
			
		if argument7 = -5
		{
			if (argument5+_xx >= xsize && argument6+_yy >= ysize)
			{
			can_do_this_code = 0
			show_debug_message("out of inventory (xsize : "+string(argument3)+" / ysize : "+string(argument4)+")")
			return -1;
			}
		}
	////
			
		if can_do_this_code = 1
		{
			for(var i = _xx; i <= (argument3-floor(argument3/2)-argument3%2); i++)
			{
				for(var ii = _yy; ii <= (argument4-floor(argument4/2)-argument4%2); ii++)
				{
				var _xx_s = argument5+i
				var _yy_s = argument6+ii
					
				if _xx_s < 0
				{
				_xx_s = 0
				}
					
				if _yy_s < 0
				{
				_yy_s = 0
				}
					
					if argument7 != -5
					{
					argument7.in_bp_item_spr[_xx_s,_yy_s] = spr_wall_mask;
					}
				_bp_owner.in_bp_item_spr[_xx_s,_yy_s] = spr_wall_mask;
				}
			}
		}
	}


if argument7 != -5
{
argument7.in_bp_item_spr[argument5,argument6] = sprite_get_name(argument0);
argument7.in_bp_item_img_ind[argument5,argument6] = argument1;
argument7.in_bp_item_xsize[argument5,argument6] = argument3;
argument7.in_bp_item_ysize[argument5,argument6] = argument4;
argument7.in_bp_item_oxsize[argument5,argument6] = argument3;
argument7.in_bp_item_oysize[argument5,argument6] = argument4;
argument7.in_bp_item_angle[argument5,argument6] = argument2;
argument7.in_bp_item_color[argument5,argument6] = argument8;
argument7.in_bp_item_name[argument5,argument6] = argument9;
argument7.in_bp_item_stacks[argument5,argument6] = argument10;
argument7.in_bp_item_max_stacks[argument5,argument6] = argument11;
argument7.in_bp_item_sname[argument5,argument6] = argument12;

	with(_item__)
	{
	inv_system_sect5()
	}
return _item__;
}

//////////////////////////////////////////////////////////////////////////
_bp_owner.in_bp_item_spr[argument5,argument6] = sprite_get_name(argument0);
_bp_owner.in_bp_item_img_ind[argument5,argument6] = argument1;
_bp_owner.in_bp_item_xsize[argument5,argument6] = argument3;
_bp_owner.in_bp_item_ysize[argument5,argument6] = argument4;
_bp_owner.in_bp_item_oxsize[argument5,argument6] = argument3;
_bp_owner.in_bp_item_oysize[argument5,argument6] = argument4;
_bp_owner.in_bp_item_angle[argument5,argument6] = argument2;
_bp_owner.in_bp_item_color[argument5,argument6] = argument8;
_bp_owner.in_bp_item_name[argument5,argument6] = argument9;
_bp_owner.in_bp_item_stacks[argument5,argument6] = argument10;
_bp_owner.in_bp_item_max_stacks[argument5,argument6] = argument11;
_bp_owner.in_bp_item_sname[argument5,argument6] = argument12;

global.refresh_item_weight = 1

//blue = $FFFF9EC0
//purple = $FFFD9DFF
//red = $FFAB9DFF
//yellow = $FF9DDFFF
}