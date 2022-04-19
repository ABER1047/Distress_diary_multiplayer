/// @description Insert description here
// You can write your code in this editor
draw_set_color(color_2)
draw_set_alpha((0.2-alpha)*image_alpha)

for(var i = 6; i <= 19; i++)
{
	if point_distance(x,y,spark_x[i],spark_y[i]) < 32
	{
	draw_line_width(x,y,spark_x[i],spark_y[i],2)
	}
	
	if alpha2 > 0
	{
		if point_distance(x,y,spark_x[i],spark_y[i]) < 32
		{
		draw_set_color(color_1)
		draw_set_alpha(alpha2*image_alpha)
		draw_line_width(x,y,spark_x[i],spark_y[i],2)
		}
	}
}