/// @description Insert description here
// You can write your code in this editor
room_width = 1280*3
room_height = 720*3
var my_p = get_my_p(global.nickname,0)
if instance_exists(my_p)
{
my_p.x = room_width/2
my_p.y = room_height/2
}
instance_destroy(floor_tile_here)
instance_destroy(wall_tile_here)
var fl_tile = instance_create_depth(room_width/2,room_height/2,999,floor_tile_here)
fl_tile.image_xscale = 32
fl_tile.image_yscale = 6

