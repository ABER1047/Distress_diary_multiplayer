/// @description Insert description here
// You can write your code in this editor


time += instance_number(ping_effect)


alpha2 -= 0.06

if time%60 = 0
{
alpha2 = 1
}

if time > 200
{
t_t_y += (25 - t_t_y)*0.05
t_y += (128+t_t_y - t_y)*0.1
image_alpha -= 0.13

	if image_alpha <= 0
	{
	instance_destroy()
	}
}

if time < 300
{
	if instance_exists(target)
	{
	t_y += (t_y_dis - t_y)*0.1
	}
	else
	{
	t_y += (64 - t_y)*0.1
	}

	if image_alpha < 0.7
	{
	image_alpha += 0.08
	}
}


if instance_exists(target)
{
x = target.x
y = target.y
depth = target.depth-1
}


