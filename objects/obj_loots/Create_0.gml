/// @description Insert description here
// You can write your code in this editor
command_buffer = buffer_create(256,buffer_grow,1);
move_snap(48,48)

someone_is_looting = -1
check_s_is_looting = 0
can_send_info = 0
opening_myself = 0
//origin_img_ind = 0
image_speed = 0
bp_ = noone
obj_mask_ = -4
opened_bp = 0

image_xscale = 0.9
image_yscale = 0.9
depth = -(y+14)

shadow_set()


interactable_now = -1
interaction_time = 0;
max_int_val = 0
own_value = 1200


top_y = instance_create_depth(x,y,999,for_check_top)
top_y.parents = id
alarm[0] = 3

saved_xx = -4
saved_yy = -4

event_user(15)//벽 히트박스 생성