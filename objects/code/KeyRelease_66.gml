/// @description Insert description here
// You can write your code in this editor

var random_val = choose(0,1)

var x_pos = global.n_pos_x[code_m.my_ID]
var y_pos = global.n_pos_y[code_m.my_ID]


var ins_pos1 = instance_position(mouse_x,mouse_y,obj_stone)
var ins_pos2 = instance_position(mouse_x,mouse_y,obj_objects_non_interact)
if ins_pos1 >= 0
{
instance_destroy(ins_pos1)
var _st_bl = instance_create_depth(mouse_x,mouse_y,999,obj_objects_non_interact)
_st_bl.received = 0;
_st_bl.pos_x = x_pos;
_st_bl.pos_y = y_pos;
random_val = 2
}

if ins_pos2 >= 0
{
instance_destroy(ins_pos2)
var _st_bl = instance_create_depth(mouse_x,mouse_y,999,obj_objects_non_interact)
_st_bl.received = 0
_st_bl.pos_x = x_pos;
_st_bl.pos_y = y_pos;
random_val = 2
}


if random_val = 0
{
var _st_bl = instance_create_depth(mouse_x,mouse_y,999,obj_stone)
_st_bl.received = 0
_st_bl.image_index = irandom_range(0,3)
_st_bl.hp = 3
_st_bl.pos_x = x_pos;
_st_bl.pos_y = y_pos;
}
if random_val = 1
{
var _st_bl = instance_create_depth(mouse_x,mouse_y,999,obj_fire)
_st_bl.activate = choose(0,1)
_st_bl.received = 0
_st_bl.pos_x = x_pos;
_st_bl.pos_y = y_pos;
}

