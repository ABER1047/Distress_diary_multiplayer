/// @description Insert description here
// You can write your code in this editor
var xx = x-(image_xscale*24)
var yy = y-(image_yscale*24)
for(var i = 0; i < image_xscale; i++)
{
	for(var ii = 0; ii < image_yscale; ii++)
	{
	draw_sprite_ext(spr_tiles,tile_num,xx+48*i,yy+48*ii,1,1,0,image_blend,1)
		
		if set_break_tile = 1
		{
			if break_tile_num[i,ii] > 0
			{
				for(var iii = 1; iii <= break_tile_stack[i,ii]; iii++)
				{
				draw_sprite_ext(spr_tiles_breaks,break_tile_num[i,ii]+iii,xx+48*i,yy+48*ii,1,1,break_tile_angle[i,ii],image_blend,1)
				}
			}
				
			if break_tile_grass[i,ii] > 0
			{
				for(var iii = 1; iii <= break_tile_grass_stack[i,ii]; iii++)
				{
				draw_sprite_ext(spr_tiles_grass,break_tile_grass[i,ii]+iii,xx+48*i,yy+48*ii,1,1,break_tile_angle[i,ii],image_blend,1)
				}
			}
		}
	}
}