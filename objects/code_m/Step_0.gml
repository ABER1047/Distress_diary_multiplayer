/// @description Insert description here
// You can write your code in this editor
if (room == Room2) 
{
	if (keyboard_check_pressed(vk_f11)) 
	{
	server = network_create_server(network_socket_tcp,server_port,4);
		
		if (server < 0) 
		{
		chat_up("서버 생성에 오류가 발생하였습니다",-4);
		}
		else 
		{
		room_goto(Room1);
		alarm[1] = 1
		is_server = true;
		}
	}
	else if (keyboard_check_pressed(vk_f10)) 
	{
	server = network_create_socket(network_socket_tcp);
	var res = network_connect(server,server_ip,server_port);
		
		if (res < 0) 
		{
		chat_up("서버 연결에 오류가 발생하였습니다",-4);
		}
		else 
		{
		room_goto(Room1);
		alarm[1] = 1
		}
	}
}

////////////////////////////////////////////////////////////////////////////////////////////

if activity = 1
{
chat_alpha += (1.2 - chat_alpha)*0.1
	if string_length(keyboard_string) > 30
	{
	keyboard_string = chat_entering
	}
	else
	{
	chat_entering = keyboard_string
	}
	
	if keyboard_check_pressed(vk_enter)
	{
		if chat_entering != ""
		{
		buffer_seek(chat_buffer, buffer_seek_start, 0);
	
		buffer_write(chat_buffer,buffer_u8,DATA.CHAT);
		buffer_write(chat_buffer,buffer_string,chat_entering);
		buffer_write(chat_buffer,buffer_string,global.nickname);
	
		send_all(chat_buffer);
			if (is_server) 
			{
			chat_up(chat_entering,global.nickname);
			}
		chat_entering = ""
		keyboard_string = "";
		}
		else
		{
		activity *= -1
		}
	}
}
else
{
	if (keyboard_check_pressed(ord("U")) || keyboard_check_pressed(vk_enter))
	{
	activity *= -1
	keyboard_string = ""
	}
	
	if received_chat_justbefore = 0
	{
	chat_alpha += (-0.2 - chat_alpha)*0.1
		if chat_alpha <= 0
		{
		received_chat_num = 0
		}
	}
	else
	{
	received_chat_justbefore ++
	chat_alpha += (1.2 - chat_alpha)*0.1
		if received_chat_justbefore > 200
		{
		received_chat_justbefore = 0
		}
	}
}