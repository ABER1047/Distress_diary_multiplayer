/// @description Insert description here
// You can write your code in this editor
set_break_tile = 1
depth = -(y-16)

//그림자 생성
shadow_ef = instance_create_depth(x,y,depth+1,wall_shadow)
shadow_ef.image_xscale = image_xscale
shadow_ef.image_yscale = 2.8
shadow_ef.tile_type = tile_type;
shadow_ef.yscale = image_yscale;


//물리적 벽 생성
top_wall = instance_create_depth(x,y-(1+image_yscale%2)*48-5,depth,wall_parents)
top_wall.image_xscale = image_xscale*1.5
top_wall.image_yscale = 1+(image_yscale%2)*3
top_wall.wall_upper = 0
top_wall.for_map_wall = 1