/// @description movimiento de Cerdo1
//reiniciar enemigo cuando el jugador pierde una vida
randomize();
if global.golpe
	{
	speed = 0;
	vspeed = 0;
	hspeed = 0;
	visible = false;
	
	x = xstart;
	y = ystart;
	exit;
	}
	else
{
	visible = true;
}


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
