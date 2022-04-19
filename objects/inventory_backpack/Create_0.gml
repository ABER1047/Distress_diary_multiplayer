/// @description Insert description here
// You can write your code in this editor
mask_ins = instance_create_depth(x,y,depth+1,inv_mask)
mask_ins.owner_ = id;


mask_ins_cp_1 = instance_create_depth(x,y,depth+1,inv_mask_cp)
mask_ins_cp_1.owner_ = id;

mask_ins_cp_2 = instance_create_depth(x,y,depth+1,inv_mask_cp)
mask_ins_cp_2.owner_ = id;

mask_ins_cp_3 = instance_create_depth(x,y,depth+1,inv_mask_cp)
mask_ins_cp_3.owner_ = id;

mask_ins_cp_4 = instance_create_depth(x,y,depth+1,inv_mask_cp)
mask_ins_cp_4.owner_ = id;


t_x = xstart
t_y = ystart

can_draw = 0
alarm[0] = 1

automatic_depth()
draging_xx = -4
draging_yy = -4
