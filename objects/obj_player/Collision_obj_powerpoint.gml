/// @description activar poder
audio_play_sound(snd_bonus,10,false);

alarm[0] = room_speed*5;
global.puntos += 50;
global.power = true;

with(obj_enemy1)
	{
	sprite_index = spr_police_scared;
	image_index = 0;
	image_speed = 0;
	
	
	v = 2;
	speed = 2
	};
	
with(other)
	{
	instance_destroy();
	}