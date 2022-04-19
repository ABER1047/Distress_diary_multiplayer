// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param loot_type
function automatic_loot_selector(argument0)
{
var loot_item_c_type_ = 0
var total_created_item_num = 0;
var loot_item_c_type_ = -4;
var xsize__ = xsize;
var ysize__ = ysize;
var random_item_num = -4

	//루트박스 사이즈 설정
	var for_c_img = floor(image_index/2)
	if (for_c_img = 0)
	{
	loot_item_c_type_ = choose(1,3,4)
	}
	else if (for_c_img = 1)
	{
	loot_item_c_type_ = choose(0,3)
	}
	else if (for_c_img = 2)
	{
	loot_item_c_type_ = 2
	}
	else if (for_c_img = 3)
	{
	loot_item_c_type_ = 5 //컴퓨터 부품
	}
	else if (for_c_img = 4)
	{
	loot_item_c_type_ = 5 //컴퓨터 부품
	}
	else if (for_c_img = 5)
	{
	loot_item_c_type_ = 2
	}
	else if (for_c_img = 6)
	{
	loot_item_c_type_ = 1
	}
	else if (for_c_img = 7)
	{
	loot_item_c_type_ = 1
	}
	else if (for_c_img = 8)
	{
	loot_item_c_type_ = 1
	}
	else if (for_c_img = 9)
	{
	loot_item_c_type_ = choose(0,1,3)
	}
	else if (for_c_img = 12) //10,11은 물병
	{
	loot_item_c_type_ = irandom_range(0,7)
	}
	else if (for_c_img = 13)
	{
	loot_item_c_type_ = 6//귀중품
	}
	else
	{
	loot_item_c_type_ = irandom_range(0,6)
	}


	show_debug_message("xsize__ : "+string(xsize__)+" / ysize__ : "+string(ysize__)+" / for_c_img : "+string(for_c_img))
	
	if argument0 != -4
	{
	loot_item_c_type_ = argument0;
	}

	//루팅 아이템 생성
	if loot_item_c_type_ = 0
	{
	random_item_num = irandom_range(0,3+floor((xsize__+ysize__)/4))
	var spr__ = spr_drink;
	
		for(var ii = 0; ii < ysize__; ii++)
		{
			for(var i = 0; i < xsize__; i++)
			{
				if (total_created_item_num < random_item_num)
				{
					if (in_bp_item_spr[i,ii] = -4)
					{
					set_item_value(spr__,irandom_range(0,sprite_get_number(spr__)),0,1,i,ii,-5)
					
					total_created_item_num++;
					}
				}
				else
				{
				break;
				break;
				}
			}
		}
	}
	
	if loot_item_c_type_ = 1
	{
	random_item_num = irandom_range(0,3+floor((xsize__+ysize__)/4))
	var spr__ = spr_comp;
	
		for(var ii = 0; ii < ysize__; ii++)
		{
			for(var i = 0; i < xsize__; i++)
			{
				if total_created_item_num < random_item_num
				{
					if in_bp_item_spr[i,ii] = -4
					{
					set_item_value(spr__,irandom_range(0,sprite_get_number(spr__)),0,1,i,ii,-5)
					
					total_created_item_num++;
					}
				}
				else
				{
				break;
				break;
				}
			}
		}
	}
	
	if loot_item_c_type_ = 2
	{
	random_item_num = irandom_range(0,3+floor((xsize__+ysize__)/4))
	var spr__ = spr_healings;
	
		for(var ii = 0; ii < ysize__; ii++)
		{
			for(var i = 0; i < xsize__; i++)
			{
				if total_created_item_num < random_item_num
				{
					if in_bp_item_spr[i,ii] = -4
					{
					set_item_value(spr__,irandom_range(0,sprite_get_number(spr__)),0,1,i,ii,-5)
					
					total_created_item_num++;
					}
				}
				else
				{
				break;
				break;
				}
			}
		}
	}
	
	if loot_item_c_type_ = 3
	{
	random_item_num = irandom_range(0,3+floor((xsize__+ysize__)/4))
	var spr__ = spr_foods;
	
		for(var ii = 0; ii < ysize__; ii++)
		{
			for(var i = 0; i < xsize__; i++)
			{
				if total_created_item_num < random_item_num
				{
					if in_bp_item_spr[i,ii] = -4
					{
					set_item_value(spr__,irandom_range(0,sprite_get_number(spr__)),0,1,i,ii,-5)
					
					total_created_item_num++;
					}
				}
				else
				{
				break;
				break;
				}
			}
		}
	}
	
	if loot_item_c_type_ = 4
	{
	random_item_num = irandom_range(0,3+floor((xsize__+ysize__)/4))
	var spr__ = spr_stackables;
	
		for(var ii = 0; ii < ysize__; ii++)
		{
			for(var i = 0; i < xsize__; i++)
			{
				if total_created_item_num < random_item_num
				{
					if in_bp_item_spr[i,ii] = -4
					{
					set_item_value(spr__,irandom_range(0,sprite_get_number(spr__)),0,irandom_range(1,4),i,ii,-5)
					
					total_created_item_num++;
					}
				}
				else
				{
				break;
				break;
				}
			}
		}
	}
	
	if loot_item_c_type_ = 5 //컴퓨터 부품
	{
	random_item_num = irandom_range(0,3+floor((xsize__+ysize__)/4))
	var spr__ = spr_comp;
	
		for(var ii = 0; ii < ysize__; ii++)
		{
			for(var i = 0; i < xsize__; i++)
			{
				if total_created_item_num < random_item_num
				{
					if in_bp_item_spr[i,ii] = -4
					{
					set_item_value(spr__,choose(4,5,6,7,8,9,28),0,1,i,ii,-5)
					
					total_created_item_num++;
					}
				}
				else
				{
				break;
				break;
				}
			}
		}
	}
	
	if loot_item_c_type_ = 6 //귀중품
	{
	random_item_num = irandom_range(0,3+floor((xsize__+ysize__)/4))
	var spr__ = spr_comp;
	
		for(var ii = 0; ii < ysize__; ii++)
		{
			for(var i = 0; i < xsize__; i++)
			{
				if total_created_item_num < random_item_num
				{
					if in_bp_item_spr[i,ii] = -4
					{
					var ramdom_p = irandom_range(0,100)
						if ramdom_p <= 20
						{
						set_item_value(spr_stackables,0,0,irandom_range(1,10),i,ii,-5)
						}
						else
						{
						set_item_value(spr__,choose(14,15,19,20,21,26,27,29),0,1,i,ii,-5)
						}
					
					total_created_item_num++;
					}
				}
				else
				{
				break;
				break;
				}
			}
		}
	}
	
	if loot_item_c_type_ = 7 //가방
	{
	random_item_num = irandom_range(0,3+floor((xsize__+ysize__)/4))
	var spr__ = spr_backpack;
	
		for(var ii = 0; ii < ysize__; ii++)
		{
			for(var i = 0; i < xsize__; i++)
			{
				if total_created_item_num < random_item_num
				{
					if in_bp_item_spr[i,ii] = -4
					{
					set_item_value(spr__,choose(14,15,19,20,21,26,27,29),0,1,i,ii,-5)
					
					total_created_item_num = random_item_num;
					break;
					break;
					}
				}
				else
				{
				break;
				break;
				}
			}
		}
	}
	
	
show_debug_message("loot_item_num : "+string(random_item_num))
}