/// @description Insert description here
// You can write your code in this editor
global.hp_bar_state++
if global.hp_bar_state > 4
{
global.hp_bar_state = 1
}

global.hp = global.max_hp