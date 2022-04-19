/// @description Insert description here
// You can write your code in this editor
var xx = x-(image_xscale*24)
var yy = y

draw_set_color(c_black)
for(var i = 0; i < 16; i++)
{
draw_set_alpha(0.03)
draw_rectangle(x-image_xscale*48,y-96,x+image_xscale*48,y+64+i,false)
}


for(var i = 0; i < image_xscale; i++)
{
draw_sprite_ext(spr_tiles_walls,tile_type+3,xx+i*48,yy+floor(yscale-1)*48,1,1,0,c_white,1)
}
