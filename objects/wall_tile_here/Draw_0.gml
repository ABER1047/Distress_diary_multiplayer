/// @description Insert description here
// You can write your code in this editor
var xx = x-(image_xscale*24)
var yy = y
if set_break_tile = 1
{
	for(var i = 1; i < image_xscale-1; i++)
	{
	draw_sprite_ext(spr_tiles_walls,tile_type+1,xx+i*48,yy-24,1,1,0,c_white,1)
	}
	
draw_sprite_ext(spr_tiles_walls,tile_type,xx,yy-24,1,1,0,c_white,1)
draw_sprite_ext(spr_tiles_walls,tile_type+2,xx+(image_xscale-1)*48,yy-24,1,1,0,c_white,1)
}
