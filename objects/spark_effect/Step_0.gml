/// @description Insert description here
// You can write your code in this editor

if surface_exists(global.light_surf)
{
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
surface_set_target(global.light_surf)
gpu_set_blendmode(bm_add);
draw_set_color(c_white)
draw_set_alpha(1)
draw_line_width(x-s_x,y-s_y,spark_x[19]-s_x,spark_y[19]-s_y,2)
gpu_set_blendmode(bm_normal)
surface_reset_target()
}



var _seted_hspeed = hspeed
if abs(_seted_hspeed) < 0.1
{
_seted_hspeed = 0
}

depth = -y

hspeed += (0 - hspeed)*0.007
image_angle += -(_seted_hspeed)*0.5
if y > z
{
bounced_time -= 0.2
hspeed += (0 - hspeed)*0.1
y -= abs(z - y)
gravity = 0
image_angle += -(_seted_hspeed)*10
	if vspeed > 0
	{
	vspeed *= -0.3
	}
}
else
{
gravity = 0.3
}


depth = -z



for(var i = 6; i <= 20; i++)
{
spark_x[i] += (x - spark_x[i])*0.08*i
spark_y[i] += (y - spark_y[i])*0.08*i

spark_x[i] = floor(spark_x[i]*10)/10
spark_y[i] = floor(spark_y[i]*10)/10
}


image_alpha -= 0.02
alpha2 -= 0.05

if bounced_time <= 2.3
{
alpha += 0.05
alpha += irandom_range(0,300)/10000
}

alpha += 0.0001

if alpha >= 0.19
{
instance_destroy()
}
