/// @description Insert description here
// You can write your code in this editor
image_index = 0

random_choose++
global.charging_gage = 0
global.charged_gage = 0
image_xscale = 1.3
image_yscale = 1.3
g_line_alpha = 0

if random_choose > 6
{
random_choose = 0
}

if random_choose = 0
{
sprite_index = spr_weapon
global.weapon_kind = 0
}

if random_choose = 1
{
sprite_index = spr_weapon
global.weapon_kind = 0
image_index = 1
size = 32
attack_speed = 0.2
}

if random_choose = 2
{
sprite_index = spr_bow
global.weapon_kind = 1
image_index = choose(2,3)
size = 32
attack_speed = 1
ammo_kind = irandom_range(0,1)
}

if random_choose = 3
{
sprite_index = spr_reloadable_weapon
global.weapon_kind = 3
image_index = 0
image_xscale = 0.9
image_yscale = 0.9
size = 32
attack_speed = 30
ammo_kind = irandom_range(0,1)
max_ammo = 1
reloading = 0
fullauto = 0
global.charging_gage = 100*(reloaded_ammo/max_ammo)
}

if random_choose = 4
{
sprite_index = spr_reloadable_weapon
global.weapon_kind = 3
image_index = 1
image_xscale = 0.9
image_yscale = 0.9
size = 12
attack_speed = 4
max_ammo = 30
ammo_kind = irandom_range(0,1)
reloading = 0
fullauto = 1
global.charging_gage = 100*(reloaded_ammo/max_ammo)
}

if random_choose = 5
{
sprite_index = Sprite51
global.weapon_kind = 2
size = 32
attack_speed = 0.2
}

if random_choose = 6
{
sprite_index = spr_reloadable_weapon
global.weapon_kind = 3
image_index = 2
image_xscale = 0.9
image_yscale = 0.9
size = 20
attack_speed = 1
max_ammo = 100
ammo_kind = 2
reloading = 0
fullauto = 1
global.charging_gage = 100*(reloaded_ammo/max_ammo)
}