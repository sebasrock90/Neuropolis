/// @description obtener puntos
global.puntos += 10;

audio_play_sound(snd_coins,10,false);

with(other)
	{
	instance_destroy();	
	}