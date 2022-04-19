/// @description Insert description here
// You can write your code in this editor
var _check_n_room_ = check_n_room(id,code_m.my_ID)
if _check_n_room_
{
	for(var i = 0; i <= 8; i++)
	{
	draw_sprite_ext(sprite_index,1,chain_x[i],chain_y[i],image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	}

	draw_self()

	//draw_text(x,y,string(chain_x[0])+" / "+string(chain_x[1])+" / "+string(chain_x[2]))
	if shadow_alpha > 0
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,shadow_alpha)
	}
}