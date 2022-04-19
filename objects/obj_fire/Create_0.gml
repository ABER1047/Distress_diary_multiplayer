/// @description Insert description here
// You can write your code in this editor
command_buffer = buffer_create(8,buffer_grow,1);
image_speed = 0
move_snap(48,48)
obj_mask_ = -4

shadow_set()
timer = 0
depth = -(y+24)

_light_ = noone

interactable_now = -1
interaction_time = 0;
max_int_val = 70
alarm[11] = 1
sfx = -4
sfx_volume = 0

top_y = instance_create_depth(x,y,999,for_check_top)
top_y.parents = id
alarm[0] = 3


saved_xx = -4
saved_yy = -4

event_user(15)//벽 히트박스 생성