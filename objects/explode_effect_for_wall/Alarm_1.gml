/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < 20; i++)
{
xx[i] = irandom_range(-rad,rad);
yy[i] = irandom_range(-rad/2.6,rad/2.6);

	repeat(3)
	{
	xx[i] += (0 - xx[i])*0.1
	yy[i] += (0 - yy[i])*0.1
	}
}
