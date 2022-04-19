/// @description Insert description here
// You can write your code in this editor
var x_pos_ = global.n_pos_x[code_m.my_ID];
var y_pos_ = global.n_pos_y[code_m.my_ID];


var random_cre_ = irandom_range(0,100)
var random_val = 2*irandom_range(0,floor((sprite_get_number(spr_loots))/2))

if random_cre_ >= 0
{
create_loots(mouse_x,mouse_y,random_val,5,5,1,0,x_pos_,y_pos_,1)
}
else
{
create_loots(mouse_x,mouse_y,random_val,irandom_range(2,6),irandom_range(2,6),1,0,x_pos_,y_pos_,0)
}