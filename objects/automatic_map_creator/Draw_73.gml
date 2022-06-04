/// @description Insert description here
// You can write your code in this editor
if room = Room2 || keyboard_check(ord("`")) || keyboard_check(ord("M"))
{
m_map_alpha = 1000
}

if m_map_alpha > 0
{
//var c_x = obj_camera.v_x/1280
var start_x = 320
var start_y = -720*0.225

if room_type = 0
{
start_x += 256
}

if room_type = 1
{
start_y += 256
}

if room_type = 2
{
start_x -= 256
}

if room_type = 3
{
start_y += 64
}



draw_set_alpha(0.8*m_map_alpha)
//draw_set_color(c_purple)
//draw_line_width(start_x+16,start_y+20*40+16,start_x+16+main_room_val*40,start_y+20*40+16,7)

for(var i = 0; i <= 30; i++)
{
	for(var ii = 0; ii <= 30; ii++)
	{
		if room_[i,ii] != -4
		{
		var xx = start_x+i*20
		var yy = start_y+ii*20
		var from__xx = room_connected_from_xx[i,ii]
			if from__xx != -4
			{
			var from__yy = room_connected_from_yy[i,ii]
			var xx2 = start_x+from__xx*20
			var yy2 = start_y+from__yy*20
			draw_set_color(c_lime)
			//draw_set_alpha(m_map_alpha)
			draw_line_width(xx+8,yy+8,xx2+8,yy2+8,7)
			}
			
		var from__xx2 = room_connected_from_xx2[i,ii]
			if from__xx2 != -4
			{
			var from__yy2 = room_connected_from_yy2[i,ii]
			var xx2 = start_x+from__xx2*20
			var yy2 = start_y+from__yy2*20
			draw_set_color(c_green)
			//draw_set_alpha(m_map_alpha)
			draw_line_width(xx+8,yy+8,xx2+8,yy2+8,7)
			}
		}
	}
}


////////////////////////////////////////////////////	
draw_set_alpha(1)
for(var i = 0; i <= 30; i++)
{
	for(var ii = 0; ii <= 30; ii++)
	{
	var col_ = c_red
		if room_[i,ii] != -4
		{
		var xx = start_x+i*20
		var yy = start_y+ii*20
		
		var stucked_player_num = 0
		
		for(var iii = 0; iii <= code_m.cli_num; iii++)
		{
			if (global.n_pos_x[iii] = i && global.n_pos_y[iii] = ii)
			{
			stucked_player_num ++
			}
		}
		
		if stucked_player_num = 0
		{
		col_ = merge_color(col_,c_yellow,1/(1+max_r_connection-room_[i,ii]))
		}
		else
		{
		col_ = merge_color(c_green,c_purple,(1+stucked_player_num)/(code_m.cli_num))
		}
		
		draw_set_color(col_)
		draw_set_alpha(m_map_alpha)
		draw_rectangle(xx,yy,xx+16,yy+16,false)
		
		if stucked_player_num > 0
		{
		draw_text_kl_scale(xx+4,yy+6,"P"+string(stucked_player_num),64,9999,m_map_alpha,c_white,-1,-1,font0,0.25,0.25,0)
		}
		
			if global.show_hitbox > 0
			{
				if room_connected_from_xx2[i,ii] != -4
				{
				draw_text_kl_scale(xx+4,yy+3,string(room_connected_from_xx[i,ii])+"/"+string(room_connected_from_xx2[i,ii]),64,9999,m_map_alpha,c_white,-1,-1,font0,0.4,0.4,0)
				}
				else
				{
				draw_text_kl_scale(xx+4,yy+3,string(room_connected_from_xx[i,ii]),64,9999,m_map_alpha,c_white,-1,-1,font0,0.4,0.4,0)
				}
			}
		}
	}
}

var i = global.start_n_pos_x
var ii = global.start_n_pos_y
var xx = start_x+i*20
var yy = start_y+ii*20
draw_text_kl_scale(xx,yy,"S",64,9999,m_map_alpha,c_white,-1,-1,font0,0.15,0.15,0)
}