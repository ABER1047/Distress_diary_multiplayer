/// @description Insert description here
// You can write your code in this editor
destroy_time++
if destroy_time > 600
{
image_alpha -= 0.05
}

if image_alpha < 0
{
instance_destroy()
}


depth = -(y-15)
//depth = -(y-15)