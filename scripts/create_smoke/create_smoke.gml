// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param x
///@param y
///@param size
///@param image_alpha
///@param image_blend
///@param received
///@param pos_x
///@param pos_y
function create_smoke(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7)
{
var obj_smoke__ = instance_create_depth(argument0,argument1,999,smoke_effect);
obj_smoke__.smoke_size = argument2;
obj_smoke__.image_alpha = argument3;
obj_smoke__.image_blend = argument4;
obj_smoke__.received = argument5;
obj_smoke__.pos_x = argument6;
obj_smoke__.pos_y = argument7;
return obj_smoke__;
}