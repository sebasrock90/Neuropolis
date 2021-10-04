/// @description atacar a enemigo 2

if(global.power)
	{
		global.puntos += 200;
		
		with(other)
			{
			x = xstart;
			y = ystart;
			v = 4;
			speed = v;
			sprite_index = spr_esmad_right;
			}
	}
else	

if(global.golpe == false)
	{
		speed = 0;
		global.vida -= 1;
		sprite_index = spr_player_dead;
		image_speed = 1;
		global.golpe = true;
	}