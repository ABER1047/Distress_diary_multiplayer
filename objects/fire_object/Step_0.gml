/// @description Insert description here
// You can write your code in this editor
time ++
timer ++
if y >= z
{
y = z
gravity = 0
}

if duration < time
{
instance_destroy()
}

if timer > 8
{
	repeat(irandom_range(0,2))
	{
	
	create_bubble_effect(irandom_range(10,100)/250,-90+irandom_range(-15,15),0,choose(-1)*irandom_range(1,100)/10,0.08,0.08,$FF00D2FE,$FF076BFE,1.5,$FF737272,x+irandom_range(-6,6),y,depth-1,1,true,false)
	}
	
	repeat(irandom_range(0,2))
	{
	
	create_bubble_effect(irandom_range(10,100)/250,-90+irandom_range(-15,15),0,choose(-1)*irandom_range(1,100)/10,0.07,0.07,c_white,$FF00D2FE,1.5,$FF342F32,x+irandom_range(-6,6),y,depth-1,1,true,false)
	}
timer = irandom_range(-6,0)
}