/// @description Insert description here
// You can write your code in this editor
var type = async_load[? "type"];

if (type == network_type_connect) 
{
	var socket = async_load[? "socket"];
	var cli_max = ds_list_size(clients)

	index = 0;
	buffer_seek(IMG_INFO_buffer, buffer_seek_start, 0);
	buffer_write(IMG_INFO_buffer, buffer_u8, DATA.INIT_DATA);
	buffer_write(IMG_INFO_buffer, buffer_u8, cli_max);
	buffer_write(IMG_INFO_buffer, buffer_u8, socket);
	
	for(var i = 0; i < cli_max; i++) 
	{
		with(player) 
		{
			if (other.index == playerID) 
			{
				buffer_write(other.IMG_INFO_buffer, buffer_string,nickname);
				buffer_write(other.IMG_INFO_buffer, buffer_u8,soc);
			}
		}
		index++;
	}
	
	network_send_packet(socket, IMG_INFO_buffer, buffer_get_size(IMG_INFO_buffer));

	ds_list_add(clients, socket);
}

else if (type == network_type_disconnect) 
{
	var socket = async_load[? "socket"];//"id"쓰지 말것 무조건 0이 나온다.

	buffer_seek(dis_buffer, buffer_seek_start, 0);
	buffer_write(dis_buffer, buffer_u8, DATA.REMOVE_CLI);
	buffer_write(dis_buffer, buffer_u8, socket);
	
	with(player) 
	{
		if (soc == socket) 
		{
		instance_destroy();
		}
	}
	chat_up("클라이언트가 나갔습니다.",-4);
	
	var pos = ds_list_find_index(clients, socket);
	ds_list_delete(clients, pos);
	
	send_all(dis_buffer);
}

else if (type == network_type_data) 
{
	var buffer = async_load[? "buffer"];
	
	buffer_seek(buffer, buffer_seek_start, 0);
	
	var data = buffer_read(buffer, buffer_u8);
	
	switch(data) 
	{
		case DATA.INIT_DATA:
			my_ID = buffer_read(buffer, buffer_u8);
			var socket = buffer_read(buffer, buffer_u8);
			code_m.cli_num = my_ID;
			player.playerID = my_ID;
			my_instance_id.soc = socket;
			chat_up("채팅방에 들어왔습니다.",-4);
			for(i = 0; i < my_ID; i++)
			{
			var obj = instance_create_depth(640,320,-100,player);
			obj.playerID = i;
			obj.nickname = buffer_read(buffer, buffer_string);
			obj.soc = buffer_read(buffer, buffer_u8);
			}
			buffer_seek(IMG_INFO_buffer,buffer_seek_start, 0);
			buffer_write(IMG_INFO_buffer,buffer_u8,DATA.ADD_CLI);
			buffer_write(IMG_INFO_buffer,buffer_u8,my_ID);
			send_all(IMG_INFO_buffer);
			send_one(buffer_string,"nickname");
			send_one(buffer_u8,"soc");
		break;
		case DATA.CHAT:
			var str = buffer_read(buffer, buffer_string);
			var nickname_ = buffer_read(buffer, buffer_string);
			chat_up(str,nickname_);
			received_chat_justbefore = 1;
			received_chat_num ++;
		break;
		case DATA.ONE_DATA:
			var ID = buffer_read(buffer, buffer_u8);
			var type = buffer_read(buffer, buffer_u8);
			var val_name = buffer_read(buffer, buffer_string);
			var val = buffer_read(buffer, type);
			with(player) 
			{
				if(playerID == ID) 
				{
				variable_instance_set(id, val_name, val);
				}
			}
		break;
		case DATA.MUCH_DATA:
			var ID = buffer_read(buffer, buffer_u8);
			var size = buffer_read(buffer, buffer_u8);
			for(var i = 0; i < size; i++) {
				var type = buffer_read(buffer, buffer_u8);
				var val_name = buffer_read(buffer, buffer_string);
				var val = buffer_read(buffer, type);
				with(player) 
				{
					if(playerID == ID) 
					{
					variable_instance_set(id, val_name, val);
					}
				}
			}
		break;
		case DATA.ADD_CLI:
			var some_ID = buffer_read(buffer, buffer_u8);
			if(my_ID != some_ID) 
			{
			var obj = instance_create_depth(360, 360, -100, player);
			obj.nickname = "";
			obj.playerID = some_ID;
			obj.soc = 0;
			code_m.cli_num++;
			chat_up("새로운 클라이언트가 왔습니다.",-4);
			global.refresh_pos_for_multi = 1;
				if (is_server = true)
				{
				global.refresh_map_for_multi = 1;
				global.refresh_obj_for_multi = 1;
				//	with(refreshable_object)
				//	{
				//	event_user(0);
				//	}
				}
			}
		break;
		case DATA.REMOVE_CLI:
			var socket = buffer_read(buffer, buffer_u8);
			with(player) 
			{
				if (soc == socket) 
				{
				instance_destroy();
				}
			}
			chat_up("누군가가 나갔습니다.",-4);
			code_m.cli_num--;
		break;
		case DATA.INS_DESTROY:
		var my_ID__ = buffer_read(buffer, buffer_u8);
			if my_ID != my_ID__
			{
			var arg0_ = real(buffer_read(buffer, buffer_string))/10;
			var arg1_ = real(buffer_read(buffer, buffer_string))/10;
			var arg2_ = string(buffer_read(buffer, buffer_string));
			instance_destroy(instance_position(arg0_,arg1_,arg2_));
			}
		break;
		case DATA.REFRESH:
		var my_ID__ = buffer_read(buffer, buffer_u8);
			if my_ID != my_ID__
			{
			var arg0_ = real(buffer_read(buffer, buffer_string))/10;
			var arg1_ = real(buffer_read(buffer, buffer_string))/10;
			var arg2_ = string(buffer_read(buffer, buffer_string));
			var arg_received_ = string(buffer_read(buffer, buffer_string));
			var arg3_ = real(buffer_read(buffer, buffer_string))/100;
			var arg4_ = real(buffer_read(buffer, buffer_string))/100;
			var arg5_ = real(buffer_read(buffer, buffer_string))/100;
			var arg6_ = real(buffer_read(buffer, buffer_string))/100;
			var arg7_ = real(buffer_read(buffer, buffer_string))/10;
			var arg8_ = real(buffer_read(buffer, buffer_string)); //refreshable values num
			
			var pos_mt = instance_position(arg0_,arg1_,arg2_);
			var arg_val_name = -4;
			var arg_val = -4;
			
				if (pos_mt >= 0)
				{
				pos_mt.image_index = arg3_;
				pos_mt.image_alpha = arg4_;
				pos_mt.image_xscale = arg5_;
				pos_mt.image_yscale = arg6_;
				pos_mt.image_angle = arg7_;

				//show_debug_message(arg8_)
					for(var i = 0; i < arg8_; i++)
					{
					arg_val_name[i] = string(buffer_read(buffer, buffer_string));
					arg_val[i] = real(buffer_read(buffer, buffer_string))/100;
					variable_instance_set(pos_mt,arg_val_name[i],arg_val[i]);
					//show_debug_message(arg_val_name[i])
					//show_debug_message(arg_val[i])
					}
				}
				else
				{
					if (arg_received_ = 0)
					{
					var _sender_xx_now = global.n_pos_x[my_ID__];
					var _sender_yy_now = global.n_pos_y[my_ID__];
			
					var ins_cre = instance_create_depth(arg0_,arg1_,0,arg2_);
					ins_cre.image_index = arg3_;
					ins_cre.image_alpha = arg4_;
					ins_cre.image_xscale = arg5_;
					ins_cre.image_yscale = arg6_;
					ins_cre.image_angle = arg7_;
					ins_cre.received = 1;
					ins_cre.pos_x = _sender_xx_now;
					ins_cre.pos_y = _sender_yy_now;
				
						for(var i = 0; i < arg8_; i++)
						{
						arg_val_name[i] = string(buffer_read(buffer, buffer_string));
						arg_val[i] = real(buffer_read(buffer, buffer_string))/100;
						variable_instance_set(ins_cre,arg_val_name[i],arg_val[i]);
						}
					}
				}
			}
		break;
		case DATA.MACE_STATE:
		var my_ID__ = buffer_read(buffer, buffer_u8);
			if my_ID != my_ID__
			{
			var xx_ = buffer_read(buffer, buffer_string);
			var yy_ = buffer_read(buffer, buffer_string);
			var image_angle_ = buffer_read(buffer, buffer_string);
			var image_alpha_ = buffer_read(buffer, buffer_string);
			var target_ = buffer_read(buffer, buffer_string);
			var personal_id_ = buffer_read(buffer, buffer_string);
			
			var check_exists = 0;
				with(obj_mace)
				{
					if (personal_id_= self.personal_id)
					{
					check_exists = 1;
						if (xx_ != -100)
						{
						x = real(xx_)/10;
						y = real(yy_)/10;
						image_angle = real(image_angle_)/10;
						image_alpha = real(image_alpha_)/10;
						}
						else
						{
						instance_destroy()
						}
					}
				}
				
				var my_p = get_my_p(string(target_),0);
				if my_p != -4 && check_exists = 0
				{
				_ins_mace = instance_create_depth(real(xx_)/10,real(yy_)/10,depth+1,obj_mace);
				_ins_mace.owner_id = my_p.id;
				_ins_mace.personal_id = real(personal_id_);
				_ins_mace.target = string(target_);
				_ins_mace.received = 1;
				}
			}
		break;
		case DATA.N_POS:
		var my_ID__ = buffer_read(buffer, buffer_u8);
			if my_ID != my_ID__
			{
			var xx_ = buffer_read(buffer, buffer_string);
			var yy_ = buffer_read(buffer, buffer_string);
			global.n_pos_x[my_ID__] = floor(xx_);
			global.n_pos_y[my_ID__] = floor(yy_);
			}
		break;
		case DATA.REFRESH_MAP:
		var my_ID__ = buffer_read(buffer, buffer_u8);
			if (my_ID != my_ID__ && is_server = false)
			{
			var target_ = automatic_map_creator
			var room_type__ = buffer_read(buffer, buffer_string);
			var main_room_val__ = buffer_read(buffer, buffer_string);
			var max_r_connection__ = buffer_read(buffer, buffer_string);
			var seed__ = floor(real(buffer_read(buffer, buffer_string)));
			var xstart__ = floor(real(buffer_read(buffer, buffer_string)));
			var ystart__ = floor(real(buffer_read(buffer, buffer_string)));
			target_.room_type = floor(real(room_type__));
			target_.main_room_val = floor(real(main_room_val__));
			target_.max_r_connection = floor(real(max_r_connection__));
			
			if (target_.map_seed != seed__)
			{
			alarm[0] = 1
			global.start_n_pos_x = xstart__;
			global.start_n_pos_y = ystart__;
			target_.map_seed = seed__;
			}
				
				for(var i = 0; i <= 30; i++)
				{
					for(var ii = 0; ii <= 30; ii++)
					{
					var f1_ = buffer_read(buffer, buffer_string);
					var f2_ = buffer_read(buffer, buffer_string);
					var f3_ = buffer_read(buffer, buffer_string);
					var f4_ = buffer_read(buffer, buffer_string);
					var f5_ = buffer_read(buffer, buffer_string);
					var f6_ = buffer_read(buffer, buffer_string);
					var f7_ = buffer_read(buffer, buffer_string);
					var f8_ = buffer_read(buffer, buffer_string);
					target_.room_[i,ii] = floor(real(f1_));
					target_.room_connected_from_xx[i,ii] = floor(real(f2_));
					target_.room_connected_from_yy[i,ii] = floor(real(f3_));
					target_.room_connected_from_xx2[i,ii] = floor(real(f4_));
					target_.room_connected_from_yy2[i,ii] = floor(real(f5_));
					target_.room_connection_[i,ii] = floor(real(f6_));
					target_.room_xsize[i,ii] = floor(real(f7_));
					target_.room_ysize[i,ii] = floor(real(f8_));
					}
				}
			}
		break;
	
	
		case DATA.COMMAND:
		var com_ID = buffer_read(buffer, buffer_u8);
		var command = buffer_read(buffer, buffer_u8);
		var sender_ = buffer_read(buffer, buffer_string);
		
			switch(command) 
			{
				case COMM.PING_HERE:
				if (global.nickname != sender_)
				{
				var __p_x = buffer_read(buffer, buffer_string);
				var __p_y = buffer_read(buffer, buffer_string);
				instance_create_depth(floor(__p_x),floor(__p_y),0,ping_effect)
				}
				break;
				
				
				case COMM.BOMB_CRE:
				if (global.nickname != sender_)
				{
				var __bomb_x = buffer_read(buffer, buffer_string);
				var __bomb_y = buffer_read(buffer, buffer_string);
				var __bomb_bomb_max_time = buffer_read(buffer, buffer_string);
				var __bomb_direction = buffer_read(buffer, buffer_string);
				var __bomb_speed = buffer_read(buffer, buffer_string);
				var __bomb_non_bomb = buffer_read(buffer, buffer_string);
				var __bomb_explo_size = buffer_read(buffer, buffer_string);
				var __bomb_zspeed = buffer_read(buffer, buffer_string);
				var __bomb_alarm = buffer_read(buffer, buffer_string);
				var __xp = buffer_read(buffer, buffer_string);
				var __yp = buffer_read(buffer, buffer_string);
				create_bomb(real(__bomb_x)/10,real(__bomb_y)/10,real(__bomb_bomb_max_time)/10,real(__bomb_direction)/10,real(__bomb_speed)/10,__bomb_non_bomb,real(__bomb_explo_size)/10,real(__bomb_zspeed)/10,__bomb_alarm,0,real(__xp),real(__yp));
				}
				break;
				
				
				case COMM.SPARK_CRE:
				if (global.nickname != sender_)
				{
				var ar1__ = buffer_read(buffer, buffer_string);
				var ar2__ = buffer_read(buffer, buffer_string);
				var ar3__ = buffer_read(buffer, buffer_string);
				var ar4__ = buffer_read(buffer, buffer_string);
				var ar5__ = buffer_read(buffer, buffer_string);
				var ar6__ = buffer_read(buffer, buffer_string);
				var ar7__ = buffer_read(buffer, buffer_string);
				var ar8__ = buffer_read(buffer, buffer_string);
				var ar9__ = buffer_read(buffer, buffer_string);
				create_spark_effect(real(ar1__)/10,real(ar2__)/10,real(ar3__)/100,real(ar4__)/10,real(ar5__)/10,string(ar6__),string(ar7__),real(ar8__)/100,real(ar9__)/100,0)
				}
				break;
				
				
				case COMM.GSTICK_CRE:
				if (global.nickname != sender_)
				{
				var __g_x = buffer_read(buffer, buffer_string);
				var __g_y = buffer_read(buffer, buffer_string);
				var __g_scale = buffer_read(buffer, buffer_string);
				var __g_v = buffer_read(buffer, buffer_string);
				var __g_h = buffer_read(buffer, buffer_string);
				var __g_z = buffer_read(buffer, buffer_string);
				var __xp = buffer_read(buffer, buffer_string);
				var __yp = buffer_read(buffer, buffer_string);
				create_glowstick(real(__g_x)/10,real(__g_y)/10,real(__g_scale)/100,real(__g_v)/10,real(__g_h)/10,real(__g_z)/10,0,real(__xp),real(__yp))
				}
				break;
				
				
				case COMM.ARROW_CRE:
				if (global.nickname != sender_)
				{
				var __arrow_img_ind = buffer_read(buffer, buffer_string);
				var __arrow_xx = buffer_read(buffer, buffer_string);
				var __arrow_yy = buffer_read(buffer, buffer_string);
				var __arrow_angle = buffer_read(buffer, buffer_string);
				var __arrow_speed = buffer_read(buffer, buffer_string);
				var __xp = buffer_read(buffer, buffer_string);
				var __yp = buffer_read(buffer, buffer_string);
				create_arrow(real(__arrow_xx)/10,real(__arrow_yy)/10,real(__arrow_angle)/10,real(__arrow_speed)/10,__arrow_img_ind,sender_,0,real(__xp),real(__yp));
				}
				break;
				
				
				case COMM.FIRE_CRE:
				if (global.nickname != sender_)
				{
				var __xx = buffer_read(buffer, buffer_string);
				var __yy = buffer_read(buffer, buffer_string);
				var __zz = buffer_read(buffer, buffer_string);
				var __dpt = buffer_read(buffer, buffer_string);
				var __dur = buffer_read(buffer, buffer_string);
				var __size = buffer_read(buffer, buffer_string);
				var __xp = buffer_read(buffer, buffer_string);
				var __yp = buffer_read(buffer, buffer_string);
				create_fire_object(real(__xx)/10,real(__yy)/10,real(__zz)/10,real(__dpt),real(__dur),real(__size)/100,0,real(__xp),real(__yp));
				}
				break;
				
				
				case COMM.SMOKE_CRE:
				if (global.nickname != sender_)
				{
				var __1 = buffer_read(buffer, buffer_string);
				var __2 = buffer_read(buffer, buffer_string);
				var __3 = buffer_read(buffer, buffer_string);
				var __4 = buffer_read(buffer, buffer_string);
				var __5 = buffer_read(buffer, buffer_string);
				var __xp = buffer_read(buffer, buffer_string);
				var __yp = buffer_read(buffer, buffer_string);
				create_smoke(real(__1)/10,real(__2)/10,real(__3)/100,real(__4)/100,string(__5),1,real(__xp),real(__yp));
				}
				break;
				
				case COMM.LOOT_CRE:
				if (global.nickname != sender_)
				{
				var __l_xx = buffer_read(buffer, buffer_string);
				var __l_yy = buffer_read(buffer, buffer_string);
				var __l_img_ind = buffer_read(buffer, buffer_string);
				var __l_xsize = buffer_read(buffer, buffer_string);
				var __l_ysize = buffer_read(buffer, buffer_string);
				var __sfx = buffer_read(buffer, buffer_string);
				var __pos_x = buffer_read(buffer, buffer_string);
				var __pos_y = buffer_read(buffer, buffer_string);
				var __auto_loots = buffer_read(buffer, buffer_string);

				create_loots(real(__l_xx)/10,real(__l_yy)/10,real(__l_img_ind),real(__l_xsize),real(__l_ysize),0,real(__sfx),real(__pos_x),real(__pos_y),real(__auto_loots));
				}
				break;
				
				case COMM.LOOT_LOOTING:
				if (global.nickname != sender_)
				{
				var __l_xx = buffer_read(buffer, buffer_string);
				var __l_yy = buffer_read(buffer, buffer_string);
				var __l_someone_is_looting = buffer_read(buffer, buffer_string);
				
				
				var get_loot_obj__ = -4
				with(obj_loots)
				{
					if (check_n_room(self,com_ID))
					{
					var _c_xx = real(__l_xx)/10;
					var _c_yy = real(__l_yy)/10;
					show_debug_message(string(floor(x))+string(floor(_c_xx)));
				
						if (floor(x) == floor(_c_xx) && floor(y) == floor(_c_yy))
						{
						get_loot_obj__ = id;
						break;
						}
					}
				}
				show_debug_message(get_loot_obj__);
				
					if get_loot_obj__ >= 0
					{
					get_loot_obj__.someone_is_looting = real(__l_someone_is_looting);
					get_loot_obj__.check_s_is_looting = real(__l_someone_is_looting);
					get_loot_obj__.opened_bp = 1;
				
						for(var i = 0; i < get_loot_obj__.xsize; i++)
						{
							for(var ii = 0; ii < get_loot_obj__.ysize; ii++)
							{
							var info1 = buffer_read(buffer, buffer_string);
							var info2 = buffer_read(buffer, buffer_string);
							var info3 = buffer_read(buffer, buffer_string);
							var info4 = buffer_read(buffer, buffer_string);
							var info5 = buffer_read(buffer, buffer_string);
							var info6 = buffer_read(buffer, buffer_string);
							var info7 = buffer_read(buffer, buffer_string);
							var info8 = buffer_read(buffer, buffer_string);
							var info9 = buffer_read(buffer, buffer_string);
							var info10 = buffer_read(buffer, buffer_string);
							var info11 = buffer_read(buffer, buffer_string);
							var info12 = buffer_read(buffer, buffer_string);
		
		
							get_loot_obj__.in_bp_item_spr[i,ii] = string(info1);
							get_loot_obj__.in_bp_item_img_ind[i,ii] = real(string(info2));
							get_loot_obj__.in_bp_item_xsize[i,ii] = real(info3);
							get_loot_obj__.in_bp_item_ysize[i,ii] = real(info4);
							get_loot_obj__.in_bp_item_oxsize[i,ii] = real(info5);
							get_loot_obj__.in_bp_item_oysize[i,ii] = real(info6);
							get_loot_obj__.in_bp_item_angle[i,ii] = real(info7);
							get_loot_obj__.in_bp_item_color[i,ii] = string(info8);
							get_loot_obj__.in_bp_item_name[i,ii] = string(info9);
							get_loot_obj__.in_bp_item_stacks[i,ii] = real(info10);
							get_loot_obj__.in_bp_item_max_stacks[i,ii] = real(info11);
							get_loot_obj__.in_bp_item_sname[i,ii] = string(info12);
							}
						}
					}
				}
				break;
				
				case COMM.P_REVIVE:
				if (global.nickname = sender_)
				{
					with(player)
					{
					revive_player(self,2,1);
					}
				}
				break;
				
				case COMM.BLOOD_EFFECT:
				if (global.nickname != sender_)
				{
				var __l_xx = buffer_read(buffer, buffer_string);
				var __l_yy = buffer_read(buffer, buffer_string);
				var __l_rad = buffer_read(buffer, buffer_string);
				var __l_bg = buffer_read(buffer, buffer_string);
				var __l_image_alpha = buffer_read(buffer, buffer_string);
				
				create_blood(real(__l_xx)/10,real(__l_yy)/10,real(__l_rad)/1000,string(__l_bg),real(__l_image_alpha)/100,0);
				}
				break;
				
				case COMM.SWORD_MASK:
				if (global.nickname != sender_)
				{
				var __l_xx = buffer_read(buffer, buffer_string);
				var __l_yy = buffer_read(buffer, buffer_string);
				var __l_xscale = buffer_read(buffer, buffer_string);
				var __l_yscale = buffer_read(buffer, buffer_string);
				var __l_angle = buffer_read(buffer, buffer_string);
				var __l_dmg = buffer_read(buffer, buffer_string);
				var __l_knockback = buffer_read(buffer, buffer_string);
				var __l_freeze_time = buffer_read(buffer, buffer_string);
				
				var _a = instance_create_depth(real(__l_xx)/10,real(__l_yy)/10,depth,sword_mask);
				_a.image_xscale = real(__l_xscale)/100;
				_a.image_yscale = real(__l_yscale)/100;
				_a.image_angle = real(__l_angle)/100;
				_a.damage = real(__l_dmg)/100;
				_a.knockback = real(__l_knockback)/100;
				_a.freeze_time = real(__l_freeze_time);
				_a.received = 1;
				}
				break;
				
				case COMM.DMGED_INFO:
				if (global.nickname != sender_)
				{
					with(player)
					{
						if(playerID == com_ID)
						{
							for(var i = 0; i <= 25; i++)
							{
							var __arrow_img_ind = buffer_read(buffer, buffer_string);
							var __arrow_xx = buffer_read(buffer, buffer_string);
							var __arrow_yy = buffer_read(buffer, buffer_string);
							var __arrow_angle = buffer_read(buffer, buffer_string);
						
							self.arrow_img_ind[i] = __arrow_img_ind;
							self.arrow_xx[i] = real(__arrow_xx)/10;
							self.arrow_yy[i] = real(__arrow_yy)/10;
							self.arrow_angle[i] = real(__arrow_angle)/10;
							}
						}
					}
				}
				break;
				
				case COMM.P_INFO:
				if (global.nickname != sender_)
				{
					if (global.n_pos_x[com_ID] == global.n_pos_x[my_ID] && global.n_pos_y[com_ID] == global.n_pos_y[my_ID])
					{
					var __last_angle = buffer_read(buffer, buffer_string);
					var zz = buffer_read(buffer, buffer_string);
					var wounded_ = buffer_read(buffer, buffer_string);
					var xx_ = buffer_read(buffer, buffer_string);
					var yy_ = buffer_read(buffer, buffer_string);
					var img_alpha_ = buffer_read(buffer, buffer_string);
					var img_angle_ = buffer_read(buffer, buffer_string);
					var img_ind_ = buffer_read(buffer, buffer_string);
					var img_xscale_ = buffer_read(buffer, buffer_string);
					var img_yscale_ = buffer_read(buffer, buffer_string);
					var img_blend_ = buffer_read(buffer, buffer_string);
					var spr_ind_name_ = buffer_read(buffer, buffer_string);
					var depth_ = buffer_read(buffer, buffer_string);
					var light_dir_ = buffer_read(buffer, buffer_string);
					if light_dir_ != -444
					{
					var last_angle_ = buffer_read(buffer, buffer_string);
					var _light__ = buffer_read(buffer, buffer_string);
					var __knocked_out = buffer_read(buffer, buffer_string);
					var __can_revive_time = buffer_read(buffer, buffer_string);
					}
					
						with(player)
						{
							if(playerID == com_ID)
							{
							self.last_angle = __last_angle;
							self.x = xx_/10;
							self.y = yy_/10;
							self.z = zz/10;
							self.wounded = wounded_/10;
							self.image_alpha = img_alpha_/100;
							self.image_angle = img_angle_/10;
							self.image_index = img_ind_;
							self.image_xscale = img_xscale_/100;
							self.image_yscale = img_yscale_/100;
							self.image_blend = string(img_blend_);
							self.sprite_index = string(spr_ind_name_);
							self.depth = real(depth_);
							var p_light_ = self._light_;
								if light_dir_ = -99
								{
								p_light_.image_alpha = 0
								}
								else
								{
								self.light_dir = real(light_dir_)/10;
								self.last_angle = real(last_angle_);
								self.knocked_out = __knocked_out;
								self.can_revive_time = real(__can_revive_time);
								p_light_.image_angle = _light__/10;
								p_light_.image_alpha = 1
								}
							}
						}
					}
					else
					{
						with(player)
						{
							if(playerID == com_ID)
							{
							self.x = -999;
							self.y = -999;
							}
						}
					}
				}
				break;
				
				case COMM.W_INFO:
				var img_alpha_ = buffer_read(buffer, buffer_string);
				var img_angle_ = buffer_read(buffer, buffer_string);
				var img_ind_ = buffer_read(buffer, buffer_string);
				var img_xscale_ = buffer_read(buffer, buffer_string);
				var img_yscale_ = buffer_read(buffer, buffer_string);
				var img_blend_ = buffer_read(buffer, buffer_string);
				var spr_ind_name_ = buffer_read(buffer, buffer_string);
				var depth_ = buffer_read(buffer, buffer_string);
				var swing_ef_alpha_ = buffer_read(buffer, buffer_string);
				var shaking_angle_ = buffer_read(buffer, buffer_string);
				var size_ = buffer_read(buffer, buffer_string);
				
				
				if (global.nickname != sender_)
				{
					with(obj_weapon)
					{
						if(owner_.playerID == com_ID)
						{
						self.image_alpha = real(img_alpha_/100);
						self.image_angle = real(img_angle_/10);
						self.image_index = real(img_ind_);
						self.image_xscale = real(img_xscale_/100);
						self.image_yscale = real(img_yscale_/100);
						self.image_blend = string(img_blend_);
						self.sprite_index = asset_get_index(string(spr_ind_name_));
						self.depth = string(depth_);
						self.swing_ef_alpha = real(swing_ef_alpha_)/100;
						self.shaking_angle = real(shaking_angle_)/10;
						self.size = real(size_)/100;
						}
					}
				}
				break;
			}
		break;
	}
	if (is_server) 
	{
	send_all(buffer);
	}
}