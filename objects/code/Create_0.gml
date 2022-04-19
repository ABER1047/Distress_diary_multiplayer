/// @description Insert description here
// You can write your code in this editor
randomize()

command_buffer = buffer_create(15,buffer_grow,1);
pos_buffer = buffer_create(8,buffer_grow,1);
map_buffer = buffer_create(256,buffer_grow,1);

////////////////////////////////////////////////////////////////////////////////////////
global.start_n_pos_x = -4;
global.start_n_pos_y = -4;
for(var i = 0; i < 5; i++)
{
global.n_pos_x[i] = -4
global.n_pos_y[i] = -4
}

global.tp_portal = -4


////////////////////////////////////////////////////////////////////////////////////////
global.grabed = 0
global.master_volume = 1
global.sfx_volume = 1
global.show_hitbox = 0
global.interact_type = 0 //0 = toggle

////////////////////////////////////////////////////////////////////////////////////////
global.hp_bar_state = 1
global.hp = 10
global.max_hp = global.hp
global.hp_for_draw = 10
global.hydration = 225;
global.hunger = 400;
global.temperature = 60;
global.tired = 0;
global.flash_light_on = 0
global.fullscreen = 0;
global.refresh_pos_for_multi = 0;
global.refresh_map_for_multi = 0;
global.refresh_obj_for_multi = 0;


global.max_effect_fir_priority = 100
global.max_effect_sec_priority = 80
global.max_effect_thi_priority = 60
////////////////////////////////////////////////////////////////////////////////////////
instance_create_depth(x,y,depth-1,obj_mouse)
show_debug_overlay(true)

///////////////////////////////////check_item_in_inv/////////////////////////////////////
bp_ = noone
opened_bp = 1
xsize = 5
ysize = 8

global.searched_item_xpos = 0
global.searched_item_ypos = 0

global.searched_empty_xsize = 0
global.searched_empty_ysize = 0
global.searched_empty_angle_set = 0
global.weight = 0;
global.refresh_item_weight = 0

for(var i = 0; i < (xsize); i++)
{
	for(var ii = 0; ii < (ysize); ii++)
	{
	in_bp_item_spr[i,ii] = -4;
	in_bp_item_img_ind[i,ii] = -4;
	in_bp_item_xsize[i,ii] = -4;
	in_bp_item_ysize[i,ii] = -4;
	in_bp_item_oxsize[i,ii] = -4;
	in_bp_item_oysize[i,ii] = -4;
	in_bp_item_angle[i,ii] = -4;
	in_bp_item_color[i,ii] = -4;
	in_bp_item_name[i,ii] = -4;
	in_bp_item_stacks[i,ii] = -4;
	in_bp_item_max_stacks[i,ii] = -4;
	in_bp_item_sname[i,ii] = -4;
	};
};
/////////////////////////////////////////////////////////////////////////////////////////

global.pickaxe_p = 1
global.weapon_kind = 0


///////////////////////////for player//////////////////////////////////////
global.h_m_speed = 0
global.v_m_speed = 0
global.cannot_chance_dir = 0