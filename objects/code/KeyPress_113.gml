/// @description Insert description here
// You can write your code in this editor
instance_destroy(floor_tile_here)
instance_destroy(wall_tile_here)
var fl_tile = instance_create_depth(room_width/2,room_height/2,999,floor_tile_here)
fl_tile.image_xscale = irandom_range(1,3)*4
fl_tile.image_yscale = irandom_range(1,3)*2