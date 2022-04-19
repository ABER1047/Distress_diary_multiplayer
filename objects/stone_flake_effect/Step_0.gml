/// @description Insert description here
// You can write your code in this editor

var _seted_hspeed = hspeed
if abs(_seted_hspeed) < 0.1
{
_seted_hspeed = 0
}

hspeed += (0 - hspeed)*0.001
image_angle += -(_seted_hspeed)*0.5
if y > z
{
hspeed += (0 - hspeed)*0.1
y -= abs(z - y)
gravity = 0
image_angle += -(_seted_hspeed)*10
	if vspeed > 0
	{
	vspeed *= -0.3
	}
timer ++
	if timer > 60
	{
	image_alpha -= 0.1
		if image_alpha <= 0
		{
		instance_destroy()
		}
	}
}
else
{
gravity = 0.2
}


depth = -z