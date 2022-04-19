function chat_up(argument0,argument1) 
{
var get_nickname = argument1;
global.chating = argument0;
	
	for(var i = 0; i < 10; i++)
	{
	global.chat[10 - i] = global.chat [9 - i];
	}
	
	if get_nickname != -4
	{
	global.chat[0] = string(get_nickname)+" : "+string(global.chating);
	}
}