/// @description movimiento de Cerdo1
//actuar de manera autonoma
if place_snapped(64,64)
	{
	if hspeed == 0
		{
		if random(3)<1 && place_free(x-1,y)	//hacia la izquierda
			{
			hspeed = -v;
			vspeed = 0;
			}
		if random(3)<1 && place_free(x+1,y)	//hacia la derecha
			{
			hspeed = v;
			vspeed = 0;
			}
		}
	else
	{
		if random(3)<1 && place_free(x,y-1)	//hacia arriba
			{
			hspeed = 0;
			vspeed = -v;
			}
		if random(3)<1 && place_free(x,y+1)	//hacia abajo
			{
			hspeed = 0;
			vspeed = v;
			}
		}
	}
	
	//cambia accion con los movimientos
switch(direction)
{
	case 0:
	sprite_index = spr_esmad_right;
	break;
	
	case 90:
	sprite_index = spr_esmad_up;
	break;

	case 180:
	sprite_index = spr_esmad_left;
	break;

	case 270:
	sprite_index = spr_esmad_down;
	break;
}