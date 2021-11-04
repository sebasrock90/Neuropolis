/// @description golpe o atacar

if(other.sprite_index == spr_police_scared)
	{
		audio_play_sound(snd_killpolice,10,false);
		global.puntos += 200;
		with(other)
			{
			x = xstart;
			y = ystart;
			v = 4;
			speed = v;
			sprite_index = spr_police_right;
			//image_index = 1;
			image_speed = 0;
			}
	}
else
if !(global.golpe) && (x = other.x || y = other.y)
	{
		audio_stop_all();
		audio_play_sound(snd_dead,10,false);
		
		//reiniciar velocidad nivel
		room_speed = 50;
		obj_control.alarm[1] = room_speed = 15;
		
		speed = 0;
		global.vida -= 1;
		sprite_index = spr_player_dead;
		image_speed = 1;
		global.golpe = true;
	}