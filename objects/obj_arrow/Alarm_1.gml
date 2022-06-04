/// @description Insert description here
// You can write your code in this editor

if image_index = 4
{
	repeat(irandom_range(0,2))
	{
	
	create_bubble_effect(irandom_range(10,100)/250,direction,0,arrow_speed,0.08,0.08,$FF00D2FE,$FF076BFE,1.5,$FF737272,x,y,-y,1,false,true)
	}
	
	repeat(irandom_range(0,2))
	{
	
	create_bubble_effect(irandom_range(10,100)/250,direction,0,arrow_speed,0.07,0.07,c_white,$FF00D2FE,1.5,$FF342F32,x,y,-y,1,false,true)
	}
}