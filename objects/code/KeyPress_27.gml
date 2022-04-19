/// @description Insert description here
// You can write your code in this editor
global.fullscreen++

if global.fullscreen > 1
{
global.fullscreen = 0
}

window_set_fullscreen(global.fullscreen)
