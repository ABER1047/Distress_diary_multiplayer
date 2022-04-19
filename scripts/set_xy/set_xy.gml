// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation
function set_xy()
{
var c_x = obj_camera.v_x/1280
	if xsize%2 = 0
	{
	_a1 = (floor((x - owner_.x-32*c_x)/(64*c_x)))
	__xx = owner_.x+(_a1*65+32)*c_x
	}
	else
	{
	_a1 = (1+floor((x - owner_.x-32*c_x)/(64*c_x)))
	__xx = owner_.x+_a1*65*c_x
	}

	if ysize%2 = 0
	{
	_a2 = (floor((y - owner_.y-32*c_x)/(64*c_x)))
	__yy = owner_.y+(_a2*65+32)*c_x
	}
	else
	{
	_a2 = (1+floor((y - owner_.y-32*c_x)/(64*c_x)))
	__yy = owner_.y+_a2*65*c_x
	}
}