/// @description Insert description here
// You can write your code in this editor

//if (!surface_exists(surf))
//{
//surf = surface_create(floor(rad),floor(rad))
//}

//Set target
//surface_set_target(surf);
//gpu_set_blendmode(bm_normal)
for(var i = 0; i < 20; i++)
{
var calcul_dis = 1 - (point_distance(xx[i],yy[i],0,0)/4-32);
	if calcul_dis > 0
	{
	calcul_dis = 1;
	}
draw_sprite_ext(Sprite5353,0,x+xx[i],y-24,calcul_dis*1.5,calcul_dis*1.5,0,$FF0A0909,0.2*calcul_dis*image_alpha);
}


//surface_reset_target()

//Draw surface
//draw_surface(surf,x,y);
//surface_free(surf);