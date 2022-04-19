// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param image_index
///@param text
///@param max_value
function draw_key_guide(argument0,argument1,argument2)
{
var text_cal = string_replace(argument1," ","");
var text_length = string_length(text_cal);
var xx = x-text_length*4;
var yy = y-top_y;
if interaction_time > 0
{
//draw_circular_bar(xx,yy,1,1,$FF000000,14,1,4.5)
draw_circular_bar(xx,yy,interaction_time,argument2,c_white,14,1,4.5)
}
	

draw_sprite_ext(spr_key_ui,argument0,x-text_length*4,y-top_y,0.45,0.45,image_angle,c_white,1)
draw_text_kl_scale(x+text_length-5,y-top_y-5,argument1,64,9999,1,c_white,0,-1,font0,0.3,0.3,0)
}