/// @description Insert description here
// You can write your code in this editor
if (global.nickname = nickname) 
{
//create_bomb(x,y,20,last_angle*90,5,0,3,0,1,1)
var speed_h_ = global.v_m_speed
if abs(speed_h_) < 0.1
{
speed_h_ = 0
}
var speed_v_ = global.h_m_speed
if abs(speed_v_) < 0.1
{
speed_v_ = 0
}

if (speed_h_ = 0 && speed_v_ = 0)
{
	if last_angle = 0
	{
	speed_h_ = 1
	}
	if last_angle = 1
	{
	speed_v_ = -1
	}
	if last_angle = 2
	{
	speed_h_ = -1
	}
	if last_angle = 3
	{
	speed_v_ = 1
	}
}

var x_pos_ = global.n_pos_x[playerID];
var y_pos_ = global.n_pos_y[playerID];
//var scale = irandom_range(1,100)/20
create_glowstick(x,y+13,0.6*image_xscale,irandom_range(2,3)*sign(speed_v_),irandom_range(2,3)*sign(speed_h_),-irandom_range(3,4),1,x_pos_,y_pos_)
}