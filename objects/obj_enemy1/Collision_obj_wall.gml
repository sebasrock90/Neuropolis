/// @description colision con la pared
hspeed = -hspeed;
vspeed = -vspeed;

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