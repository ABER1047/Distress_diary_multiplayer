/// @description Insert description here
// You can write your code in this editor
//multiplayer
;
command_buffer = buffer_create(512,buffer_grow,1);

wounded = 0
wounded_with_cannotmove = 0
image_speed = 0
__pickaxe = instance_create_depth(x,y,depth-1,obj_weapon)
__pickaxe.owner_ = id
ori_spr = spr_original_bp0
sprite_seter = 0
image_alpha = 1
time = 0
speed_sec = 0

burning = 0;
add_z_grid()
zspeed = 0
fixing_zgrid = 0
bp_sprite = noone
fire_sfx_playing = 0
total_ammo = 0

shadow_set()
light_dir = 0
temp_increase = 0
last_angle = 2
_light_ = instance_create_depth(x,y,depth,obj_light)
_light_.p_id = id
_light_.alpha = 0.2
_light_.sprite_index = Sprite58
_light_.image_blend = $ffffff
_light_.light_type = 0
_light_.image_alpha = 0
_light_.image_xscale = 0.64
_light_.image_yscale = 0.64

//_light_.image_alpha = 0.5
//_light_.image_blend = $FFB2B2B2
//_light_.image_blend = $FF4BACFF





//arrow_injured
n_arrow_set = 0
b_arrow_set = 0
can_revive_time = 0
for(var i = 0; i <= 25; i++)
{
arrow_img_ind[i] = -4
arrow_xx[i] = -4
arrow_yy[i] = -4
arrow_angle[i] = -4
}





knocked_out = 0
reviving_now = 0
cannot_move_wall = 0
//camera_zoom_out = 0


heavy_guide = 0
hunger_guide = 0
cold_guide = 0
hot_guide = 0
hydration_guide = 0
tired_guide = 0




global.can_move_room = 1