// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param message_text
///@param icon
function guide_message(argument0,argument1)
{
global.guide_message_alpha = 0;
global.guide_message = argument0;
global.guide_timer = 1;
global.guide_icon = argument1;
global.guide_scale = 1.5;
}