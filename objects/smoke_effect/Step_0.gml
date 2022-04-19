/// @description Insert description here
// You can write your code in this editor
if set_smoke_val = 1 && stop_step_cal = 0
{
	for(var i = 0; i < smoke_size_cal; i++)
	{
		if alpha[i] < t_alpha[i]
		{
		alpha[i] += (t_alpha[i]*1.01 - alpha[i])*0.1
		}
		else
		{
		t_alpha[i] = 0
		}
		
		xx[i] += x_speed[i]
		yy[i] += y_speed[i]
	
		if (abs(xx[i]) > smoke_size)
		{
		alpha[i] -= x_speed[i]
		}
	
		if (abs(yy[i]) > smoke_size)
		{
		alpha[i] -= y_speed[i]
		}
	
		if alpha[i] <= 0
		{
		xx[i] = irandom_range(-smoke_size,smoke_size)
		yy[i] = irandom_range(-smoke_size,smoke_size)
		x_speed[i] = irandom_range(-10,10)*irandom_range(85,115)/5000
		y_speed[i] = irandom_range(-10,10)*irandom_range(85,115)/5000
		t_alpha[i] = 1;
		}
	}
}