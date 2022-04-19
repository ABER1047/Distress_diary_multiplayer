/// @description Insert description here
// You can write your code in this editor
destroy_time++
if destroy_time > 1200
{
image_alpha -= 0.05
}

if image_alpha < 0
{
instance_destroy()
}



if destroy_time > 1 && image_xscale < 0.1
{
destroy_time += floor(1/image_xscale)
}

if destroy_time = 1
{
	for(var i = 0; i < 30; i++)
	{
	var rad_t = spread_blood_rad*3
	xx[i] = irandom_range(-rad,rad);
	yy[i] = irandom_range(-rad/2.6,rad/2.6);
	
	xx2[i] = irandom_range(-rad_t,rad_t);
	yy2[i] = irandom_range(-rad_t/2.6,rad_t/2.6);

		repeat(3)
		{
		xx[i] += (0 - xx[i])*0.23
		yy[i] += (0 - yy[i])*0.23
		}
	}
}
