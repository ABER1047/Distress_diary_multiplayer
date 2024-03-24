/// @description Insert description here
// You can write your code in this editor
window()
server_ip = "127.0.0.1";
server_port = 32512; 
is_server = false;
index = 0;
server = -4;
draw_set_font(font0);

var _random_alphabet = choose("a","b","c","d","e","f")
global.nickname = "instance.player.name "+_random_alphabet+string(irandom(109));
enum DATA 
{
INIT_DATA,
CHAT,
ONE_DATA,
MUCH_DATA,
ADD_CLI,
REMOVE_CLI,
COMMAND,
MACE_STATE,
REFRESH,
INS_DESTROY,
N_POS,
REFRESH_MAP,
SEND_MAP_DATA
}

enum COMM 
{
DMGED_INFO,
P_INFO,
W_INFO,
ARROW_CRE,
P_REVIVE,
BOMB_CRE,
LOOT_CRE,
GSTICK_CRE,
LOOT_LOOTING,
BLOOD_EFFECT,
PING_HERE,
SWORD_MASK,
SMOKE_CRE,
FIRE_CRE,
SPARK_CRE
}
IMG_INFO_buffer = buffer_create(3,buffer_grow,1);
dis_buffer = buffer_create(3,buffer_grow,1);
one_buffer = buffer_create(64,buffer_grow,1);
much_buffer = buffer_create(256,buffer_grow,1);
my_ID = 0;
my_instance_id = 0;
clients = ds_list_create();
list_names = ds_list_create();
list_vals = ds_list_create();
list_types = ds_list_create();




//////////////////////////////////////////////////////

global.chat = array_create(10, "");
cli_num = 0;
for(var i = 0; i < 10; i++) 
{
global.chat[i] = "";
}
activity = -1
chat_alpha = 0
chat_entering = ""
chat_buffer = buffer_create(2, buffer_grow, 1);
received_chat_justbefore = 0
received_chat_num = 0