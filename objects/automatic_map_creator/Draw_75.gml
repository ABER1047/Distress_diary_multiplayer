/// @description Insert description here
// You can write your code in this editor
if global.show_hitbox > 0 || room = Room2
{
var _a = code_m.my_ID
var i = global.n_pos_x[_a];
var ii = global.n_pos_y[_a];
draw_text_kl_scale(32,600,"user_id : "+string(_a)+" / map_seed : "+string(map_seed)+" / start_pos ("+string(global.start_n_pos_x)+", "+string(global.start_n_pos_y)+")",64,9999,1,c_gray,-1,-1,font0,0.25,0.25,0)
var n_instance_num = 0
with(refreshable_object)
{
	if (self.pos_x = i && self.pos_y = ii)
	{
	n_instance_num ++
	}
}
draw_text_kl_scale(32,630,"x : "+string(i)+" / y : "+string(ii)+" / room_id : "+string(i+ii*30)+" / obj_num(activated) : "+string(n_instance_num)+" / obj_num(real) : "+string(instance_number(all)),64,9999,1,c_gray,-1,-1,font0,0.25,0.25,0)
draw_text_kl_scale(32,680,"Recreate map (P) / Add rooms once (I) / Keep add rooms (O) / Fullscreen (ESC) / Create server (F11) / Join server (F10) / Logs (Enter)",64,9999,1,c_white,-1,-1,font0,0.3,0.3,0)
}