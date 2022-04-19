// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation
///@param target_bp_owner
///@param xsize
///@param ysize

function check_inv_empty(argument0,argument1,argument2)
{
var m_width_ = argument0.xsize;
var m_height_ = argument0.ysize;

var check_range_xx = m_width_-argument1;
var check_range_yy = m_height_-argument2;
var need_to_check_other_angle = 0;

	if (check_range_xx < 0 || check_range_yy < 0)
	{
	//빈칸 없음 => 물건 회전시켜도 빈칸 없나 체크하기
	need_to_check_other_angle = 1;
	}
	
	if need_to_check_other_angle = 1
	{
	//물건 회전상태 적용
	check_range_xx = m_width_-argument2;
	check_range_yy = m_height_-argument1;
	
		if (check_range_xx < 0 || check_range_yy < 0)
		{
		//방향을 돌려도 빈칸 없음
		show_debug_message("inv_f_ - cannot find any place")
		global.searched_item_xpos = -4;
		global.searched_item_ypos = -4;
		return -4;
		}
	}

	//빈칸 찾기
	if need_to_check_other_angle = 0
	{
		for(var ii = 0; ii <= check_range_yy; ii++)
		{
			for(var i = 0; i <= check_range_xx; i++)
			{
			var check_empty__ = 1;
			/////////////////////////////////////////////////////////
				for(var k = 0; k < argument1; k++)
				{
					for(var kk = 0; kk < argument2; kk++)
					{
						if (argument0.in_bp_item_spr[i+k,ii+kk] != -4)
						{
						check_empty__ = 0;
						}
					}
				}
			/////////////////////////////////////////////////////////
		
				//빈칸 찾음
				if check_empty__ = 1
				{
				var founded_xx = i;
				var founded_yy = ii;
				global.searched_item_xpos = founded_xx+floor((argument1-1)/2);
				global.searched_item_ypos = founded_yy+floor((argument2-1)/2);
				global.searched_empty_xsize = argument1;
				global.searched_empty_ysize = argument2;    
				global.searched_empty_angle_set = 0;
				
				show_debug_message("inv_f_xx : "+string(global.searched_item_xpos)+"inv_f_yy : "+string(global.searched_item_ypos))
				return true;
				}
			}
		}
	//빈칸 못 찾음 => 방향 바꿔서 새로 찾아보기
	need_to_check_other_angle = 1;
	}
	
	
	//물건 방향 변경해서 빈칸 찾기
	if need_to_check_other_angle = 1
	{
	//물건 회전상태 적용
	check_range_xx = m_width_-argument2;
	check_range_yy = m_height_-argument1;
	
		for(var i = 0; i <= check_range_xx; i++)
		{
			for(var ii = 0; ii <= check_range_yy; ii++)
			{
			var check_empty__ = 1;
			/////////////////////////////////////////////////////////
				for(var k = 0; k < argument2; k++)
				{
					for(var kk = 0; kk < argument1; kk++)
					{
						if (argument0.in_bp_item_spr[i+k,ii+kk] != -4)
						{
						check_empty__ = 0;
						}
					}
				}
			/////////////////////////////////////////////////////////
		
				//빈칸 찾음
				if check_empty__ = 1
				{
				var founded_xx = i;
				var founded_yy = ii;
				global.searched_item_xpos = founded_xx+floor((argument2-1)/2);
				global.searched_item_ypos = founded_yy+floor((argument1-1)/2);
				global.searched_empty_xsize = argument1;
				global.searched_empty_ysize = argument2;     
				global.searched_empty_angle_set = 1;
				
				show_debug_message("inv_f_xx : "+string(global.searched_item_xpos)+"inv_f_yy : "+string(global.searched_item_ypos))
				return true;
				}
			}
		}
		
	show_debug_message("inv_f_xx : -4"+"inv_f_yy : -4")
	global.searched_item_xpos = -4;
	global.searched_item_ypos = -4;
	return -4;
	}
/////////////////////////////////////////////////////////
}
