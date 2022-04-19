/// @description Insert description here
// You can write your code in this editor
command_buffer = buffer_create(8,buffer_grow,1);
image_speed = 0
own_value = 0
move_snap(48,48)
obj_mask_ = -4

shadow_set()
timer = 0
depth = -(y+24)

_light_ = noone
alarm[11] = 1

saved_xx = -4
saved_yy = -4

event_user(15)//벽 히트박스 생성