/// @description Insert description here
// You can write your code in this editor
if global.hp < 0
{
global.hp = 0
}

if global.hydration < 0
{
global.hydration = 0
}

if global.hydration > 225
{
global.hydration = 0
}

if global.hunger < 0
{
global.hunger = 0
}

if global.hunger > 400
{
global.hunger = 400
}

global.hp_for_draw += (global.hp - global.hp_for_draw)*0.1



////////////////////////////////////////////////////////////////////////////////

//현재 방의 오브젝트 상태 새로고침
if (global.refresh_obj_for_multi = 1)
{
	with(refreshable_object)
	{
	event_user(0);
	}
global.refresh_obj_for_multi = 0;
}

//가방 내 아이템 무게 새로고침
if global.refresh_item_weight = 1
{
set_item_weight(code);
global.refresh_item_weight = 0
}



//플레이어 위치 새로고침
if global.refresh_pos_for_multi = 1
{
	with(refreshable_object)
	{
		if object_index != code
		{
			if check_n_room(id,code_m.my_ID)
			{
				if (saved_xx != -4)
				{
				x = saved_xx;
				y = saved_yy;
				event_user(15)//벽 히트박스 생성
				}
			}
			
			if (saved_xx = -4)
			{
			alarm[10] = 1;
			}
		}
	}

//맵 구조
instance_destroy(floor_tile_here)
var n_xx = global.n_pos_x[code_m.my_ID];
var n_yy = global.n_pos_y[code_m.my_ID];

var fl_tile = instance_create_depth(room_width/2,room_height/2,999,floor_tile_here);
fl_tile.image_xscale = automatic_map_creator.room_xsize[n_xx,n_yy];
fl_tile.image_yscale = automatic_map_creator.room_ysize[n_xx,n_yy];



buffer_seek(pos_buffer, buffer_seek_start, 0);
buffer_write(pos_buffer, buffer_u8, code_m.DATA.N_POS);
buffer_write(pos_buffer, buffer_u8, code_m.my_ID);
buffer_write(pos_buffer, buffer_string,global.n_pos_x[code_m.my_ID]);
buffer_write(pos_buffer, buffer_string,global.n_pos_y[code_m.my_ID]);
send_all(pos_buffer);
global.refresh_pos_for_multi = 0
}



//맵(형태) 새로고침
if (global.refresh_map_for_multi = 1 && code_m.is_server = true)
{
buffer_seek(map_buffer, buffer_seek_start, 0);
buffer_write(map_buffer, buffer_u8, code_m.DATA.REFRESH_MAP);
buffer_write(map_buffer, buffer_u8, code_m.my_ID);
buffer_write(map_buffer, buffer_string, automatic_map_creator.room_type);
buffer_write(map_buffer, buffer_string, automatic_map_creator.main_room_val);
buffer_write(map_buffer, buffer_string, automatic_map_creator.max_r_connection);
buffer_write(map_buffer, buffer_string, random_get_seed());
buffer_write(map_buffer, buffer_string, global.start_n_pos_x);
buffer_write(map_buffer, buffer_string, global.start_n_pos_y);
for(var i = 0; i <= 30; i++)
{
	for(var ii = 0; ii <= 30; ii++)
	{
	var f1 = floor(automatic_map_creator.room_[i,ii])
	var f2 = floor(automatic_map_creator.room_connected_from_xx[i,ii])
	var f3 = floor(automatic_map_creator.room_connected_from_yy[i,ii])
	var f4 = floor(automatic_map_creator.room_connected_from_xx2[i,ii])
	var f5 = floor(automatic_map_creator.room_connected_from_yy2[i,ii])
	var f6 = floor(automatic_map_creator.room_connection_[i,ii])
	var f7 = floor(automatic_map_creator.room_xsize[i,ii])
	var f8 = floor(automatic_map_creator.room_ysize[i,ii])
	buffer_write(map_buffer, buffer_string,string(f1));
	buffer_write(map_buffer, buffer_string,string(f2));
	buffer_write(map_buffer, buffer_string,string(f3));
	buffer_write(map_buffer, buffer_string,string(f4));
	buffer_write(map_buffer, buffer_string,string(f5));
	buffer_write(map_buffer, buffer_string,string(f6));
	buffer_write(map_buffer, buffer_string,string(f7));
	buffer_write(map_buffer, buffer_string,string(f8));
	}
}
send_all(map_buffer);
global.refresh_map_for_multi = 0
}


