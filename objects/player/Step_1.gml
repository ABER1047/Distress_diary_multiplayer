/// @description Insert description here
// You can write your code in this editor
global.hydration -= 0.0005
global.hunger -= 0.001

var cal = (global.weight-150)/100
if cal < 0
{
cal = 0
}
if global.v_m_speed > global.h_m_speed
{
global.tired += (cal)*abs(global.v_m_speed)*0.005
}
else
{
global.tired += (cal)*abs(global.h_m_speed)*0.005
}



if global.tired > 70
{
	if tired_guide = 0
	{
	guide_message("Tired",4)
	tired_guide = 1
	}
}
else
{
tired_guide = 0
}

if global.weight > 150
{
	if heavy_guide = 0
	{
	guide_message("Too heavy",0)
	heavy_guide = 1
	}
}
else
{
heavy_guide = 0
}

if global.hunger < 60
{
	if hunger_guide = 0
	{
	guide_message("Starving",2)
	hunger_guide = 1
	}
}
else
{
hunger_guide = 0
}


if global.hydration < 60
{
	if hydration_guide = 0
	{
	guide_message("Dehydrated",1)
	hydration_guide = 1
	}
}
else
{
hydration_guide = 0
}

if global.temperature < 50
{
	if cold_guide = 0
	{
	guide_message("Too cold",3)
	cold_guide = 1
	}
}
else
{
cold_guide = 0
}


if global.temperature > 80
{
	if hot_guide = 0
	{
	guide_message("Too hot",3)
	hot_guide = 1
	}
}
else
{
hot_guide = 0
}





if burning > 0
{
time ++
	if time > 6
	{
		repeat(irandom_range(0,2))
		{
		
		create_buble_effect(irandom_range(10,100)/250,-90+irandom_range(-15,15),0,choose(-1)*irandom_range(1,100)/10,0.08,0.08,$FF00D2FE,$FF076BFE,1.5,$FF737272,x+irandom_range(-6,6),y+irandom_range(-6,6),depth-1,1,true,false)
		}
	
		repeat(irandom_range(0,2))
		{
		
		create_buble_effect(irandom_range(10,100)/250,-90+irandom_range(-15,15),0,choose(-1)*irandom_range(1,100)/10,0.07,0.07,c_white,$FF00D2FE,1.5,$FF342F32,x+irandom_range(-6,6),y+irandom_range(-6,6),depth-1,1,true,false)
		}
	
	player_wounded(0,1,0.05,0,0,id)
	time = irandom_range(-6,0)
	burning --
	
		if burning > 50
		{
		player_wounded(0,1,1,0,0,id)
		burning -= 30
		}
	}
}

if burning < 0
{
burning = 0;
}