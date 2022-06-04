/// @description Insert description here
// You can write your code in this editor
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
var s_w = camera_get_view_width(view_camera[0])
var s_h = camera_get_view_height(view_camera[0])

v_x = 1280*0.75
v_y = 720*0.75
tv_x = 1280*0.75
tv_y = 720*0.75
global.view_angle_ = 0
surf = -4

sc_blackout_ef_alpha = 0


global.t_shake_x = 0
global.t_shake_y = 0
global.real_shake_x = 0
global.real_shake_y = 0
global.shake_time = 0
global.shake_x = 0
global.shake_y = 0
global.warning_hp = 0
global.blackout_screen = 0;
global.t_blackout_screen = 0;
global.guide_message = 0;
global.guide_message_alpha = 0;
global.guide_timer = 0;
global.guide_icon = 0;

global.in_smoke_alpha = 0
global.in_smoke = c_white

for(var i = 0; i <= 10; i++)
{
global.disp_got_item[i] = -4
global.disp_got_item_alpha[i] = -4
global.disp_got_item_spr[i] = -4
global.disp_got_item_ind[i] = -4
global.disp_got_item_alpha_delay[i] = 60
global.disp_got_item_num[i] = -4
}


/////////////////////////////////////////////////
global.charging_gage = 0
weight_for_draw = 0
temp_for_draw = 0
global.charge_gage_alpha = 0
global.charge_gage_alpha_sec = -0.1
global.charged_gage = 0
global.guide_scale = 2


sepa_power = 0
sepa_alpha = 0



////////////////////////////////////////
//application_surface_draw_enable(false);
surf_screen = surface_create(s_w,s_h)
// Creates the surface and makes it the size of the visible area


weight_alpha = 1
check_weight_change = 0
hydration_alpha = 1
check_hydration_change = 0
temperature_alpha = 1
check_temperature_change = 0
tired_alpha = 1
check_tired_change = 0
hunger_alpha = 1
check_hunger_change = 0