/// @description Insert description here
// You can write your code in this editor

if instance_exists(owner_id)
{
pos_x = global.n_pos_x[owner_id.playerID];
pos_y = global.n_pos_y[owner_id.playerID];
//pos_x = global.n_pos_x[code_m.my_ID]
//pos_y = global.n_pos_y[code_m.my_ID]
}

var _check_n_room_ = check_n_room(id,code_m.my_ID)
if _check_n_room_
{
shadow_alpha_set(y+1)
depth = -y+1
//saved_xx = x
//saved_yy = y

var xx = x
var yy = y
if owner_id != -4 && instance_exists(owner_id)
{
xx = owner_id.x
yy = owner_id.y
}


var dis_cal_x = (xx - x)/8
var dis_cal_y = (yy - y)/8

for(var i = 0; i <= 8; i++)
{
chain_x[i] = x+dis_cal_x*i
chain_y[i] = y+dis_cal_y*i
}


if received = 0
{
var _dis = point_distance(x,y,xx,yy)
	if _dis >= 96
	{
	checker = 0
	var cal_dis_p = _dis/16
		if cal_dis_p <= 1
		{
		cal_dis_p = 1
		}

		if timer = 0
		{
		speed += (0 - speed)*0.05*cal_dis_p
		}
	}


	if speed < 0.7
	{
	timer = 1
		if checker = 0
		{
		checker = 1
		direction = point_direction(x,y,xx,yy)
		}
	}

	if timer > 0
	{
	timer ++
	speed -= (speed - _dis/4)*0.01
		if timer > 40
		{
		saved_speed = speed
		timer = 0
		}
	}
	
buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, code_m.DATA.MACE_STATE);
buffer_write(command_buffer, buffer_u8, code_m.my_ID);
buffer_write(command_buffer, buffer_string,floor(x*10));
buffer_write(command_buffer, buffer_string,floor(y*10));
buffer_write(command_buffer, buffer_string,floor(image_angle*10));
buffer_write(command_buffer, buffer_string,floor(image_alpha*10));
buffer_write(command_buffer, buffer_string,string(target));
buffer_write(command_buffer, buffer_string,floor(personal_id));
send_all(command_buffer);
}
}



//if speed < 1
//{
//speed += (_dis - speed)*0.1
//}