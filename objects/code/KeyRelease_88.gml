/// @description Insert description here
// You can write your code in this editor
global.night_vision++

if global.night_vision > 1
{
global.blackout_screen = 3
global.night_vision = 0
}
else
{
global.blackout_screen = 96
play_sfx(night_vision_sfx,0,0.4)
}