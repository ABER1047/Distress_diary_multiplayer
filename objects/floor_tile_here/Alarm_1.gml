/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i <= image_xscale; i++)
{
	for(var ii = 0; ii <= image_yscale; ii++)
	{
	break_tile_num[i,ii] = irandom_range(-3,3)
	break_tile_angle[i,ii] = irandom_range(0,2)*90
	break_tile_stack[i,ii] = irandom_range(0,2);
	break_tile_grass[i,ii] = irandom_range(-6,5);
	break_tile_grass_stack[i,ii] = irandom_range(0,1);
	}
}

show_debug_message(image_yscale%2)

//드로우용 벽 생성
var cal_ = (image_yscale)*24
var yy_top = y-cal_
var yy_bot_f = y+cal_
var yy_bot = y+cal_+(image_yscale%2)

var xx_left = x-96-(image_xscale)*24
var xx_right = x+72+(image_xscale)*24

_wall_d = instance_create_depth(x,yy_top,depth,wall_tile_here)
_wall_d.image_xscale = image_xscale
_wall_d.image_yscale = image_yscale
_wall_d.tile_type = choose(0,1)*8

//물리적 벽 생성
bottom_wall = instance_create_depth(x,yy_bot,depth,wall_parents)
bottom_wall.image_xscale = image_xscale*1.5
bottom_wall.image_yscale = 1+(image_yscale%2)/1.7
bottom_wall.wall_upper = 1
bottom_wall.for_map_wall = 1

var x_left = (image_xscale+2)*24+5
var x_right = (image_xscale+image_xscale%2)*24

//물리적 벽 생성
left_wall = instance_create_depth(x+x_right,yy_bot_f,depth,wall_parents)
left_wall.sprite_index = spr_wall_mask_upper
left_wall.image_xscale = 1+image_xscale%2
left_wall.image_yscale = image_yscale*2
left_wall.wall_upper = 0
left_wall.for_map_wall = 1

//물리적 벽 생성
right_wall = instance_create_depth(x-x_left,yy_bot_f,depth,wall_parents)
right_wall.sprite_index = spr_wall_mask_upper
right_wall.image_xscale = 1+image_xscale%2
right_wall.image_yscale = image_yscale*2
right_wall.wall_upper = 0
right_wall.for_map_wall = 1

set_break_tile = 1




////////////////////////////////////////////////////////////////////////////////////////////


goto_top = instance_create_depth(x,yy_top,-y,obj_portal)
goto_top.tp_to = 0

goto_right = instance_create_depth(xx_right-90,y,-y,obj_portal)
goto_right.tp_to = 1

goto_bot = instance_create_depth(x,yy_bot_f-32,-y,obj_portal)
goto_bot.tp_to = 2

goto_left = instance_create_depth(xx_left+64,y,-y,obj_portal)
goto_left.tp_to = 3