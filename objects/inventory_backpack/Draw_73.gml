/// @description Insert description here
// You can write your code in this editor
if can_draw = 1
{
var c_x = obj_camera.v_x/1280


//draw_text_kl_scale(x-35*c_x,y-(60)*c_x,"a",64*c_x,9999,1,c_white,0,-1,font0,c_x*0.3,c_x*0.3,0)

draw_set_color($FF1F1F21)
draw_set_alpha(1)
draw_rectangle(x-35*c_x,y-(60)*c_x,x+(35+(max_width-1)*65)*c_x,y+(35+(max_height-1)*65)*c_x,false)
draw_set_alpha(0.65)
draw_rectangle(x-35*c_x,y-(60)*c_x,x+(35+(max_width-1)*65)*c_x,y-32*c_x,false)

draw_set_color(c_gray)
draw_set_alpha(1)
draw_rectangle(x-35*c_x,y-(60)*c_x,x+(35+(max_width-1)*65)*c_x,y-33*c_x,true)
draw_rectangle(x-34*c_x,y-(59)*c_x,x+(34+(max_width-1)*65)*c_x,y-33*c_x,true)
draw_rectangle(x-33*c_x,y-(58)*c_x,x+(33+(max_width-1)*65)*c_x,y-33*c_x,true)


draw_set_color(c_gray)
draw_set_alpha(0.4)
draw_rectangle(x-(33)*c_x,y-(33)*c_x,x+(33+(max_width-1)*65)*c_x,y+(32+(max_height-1)*65)*c_x,true)
draw_set_alpha(1)
draw_rectangle(x-(33)*c_x,y-(33)*c_x,x+(33+(max_width-1)*65)*c_x,y+(33+(max_height-1)*65)*c_x,true)
draw_rectangle(x-(34)*c_x,y-(34)*c_x,x+(34+(max_width-1)*65)*c_x,y+(34+(max_height-1)*65)*c_x,true)
draw_rectangle(x-(35)*c_x,y-(35)*c_x,x+(35+(max_width-1)*65)*c_x,y+(35+(max_height-1)*65)*c_x,true)


draw_set_alpha(0.2)
for(var i = 0; i < max_width; i++)
{
var xx = x+i*65*c_x
	for(var ii = 0; ii < max_height; ii++)
	{
	var yy = y+ii*65*c_x
	draw_rectangle(xx-32*c_x,yy-32*c_x,xx+32*c_x,yy+32*c_x,true)
	}
}

draw_text_kl_scale(x-28*c_x,y-(55)*c_x,bp_name,64*c_x,9999,1,c_white,0,-1,font0,c_x*0.35,c_x*0.35,0)
}

if global.show_hitbox = 1
{
var c_x = obj_camera.v_x/1280
	for(var i = 0; i < max_width; i++)
	{
	var xx = x+i*65*c_x
		for(var ii = 0; ii < max_height; ii++)
		{
		var yy = y+ii*65*c_x
		draw_text_kl_scale(xx-32*c_x+c_x*25,yy-32*c_x+c_x*25,in_bp_item_spr[i,ii],64*c_x,9999,1,c_white,0,-1,font0,c_x*0.2,c_x*0.2,0)
		}
	}
}