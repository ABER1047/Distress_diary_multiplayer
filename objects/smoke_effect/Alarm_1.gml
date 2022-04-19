/// @description Insert description here
// You can write your code in this editor
smoke_size_cal = floor(smoke_size-54)
if smoke_size_cal <= 5
{
smoke_size_cal = 5
}

for(var i = 0; i < smoke_size_cal; i++)
{
xx[i] = irandom_range(-smoke_size,smoke_size)
yy[i] = irandom_range(-smoke_size,smoke_size)
x_speed[i] = irandom_range(-10,10)*irandom_range(85,115)/5000
y_speed[i] = irandom_range(-10,10)*irandom_range(85,115)/5000
randomize_scale[i] = irandom_range(85,115)/100
alpha[i] = 0
t_alpha[i] = 1
}
set_smoke_val = 1

image_xscale = smoke_size/48
image_yscale = smoke_size/48



///////////////////////////////////////////////////////////////////////////////////////////////////////////

if received = 0
{
buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, code_m.DATA.COMMAND);
buffer_write(command_buffer, buffer_u8, code_m.my_ID);
buffer_write(command_buffer, buffer_u8, code_m.COMM.SMOKE_CRE);
buffer_write(command_buffer, buffer_string,string(global.nickname));
buffer_write(command_buffer, buffer_string,floor(x*10));
buffer_write(command_buffer, buffer_string,floor(y*10));
buffer_write(command_buffer, buffer_string,floor(smoke_size*100));
buffer_write(command_buffer, buffer_string,floor(image_alpha*100));
buffer_write(command_buffer, buffer_string,string(image_blend));
buffer_write(command_buffer, buffer_string,floor(pos_x));
buffer_write(command_buffer, buffer_string,floor(pos_y));
send_all(command_buffer);
}