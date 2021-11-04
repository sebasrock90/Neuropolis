/// @description crear variables juego
audio_play_sound(snd_intro,10,false);
instance_deactivate_object(obj_enemy1);

global.puntos = 0; //score
global.vida = 3; //lives
global.power = false; //poder
global.beer = false; //bonos
global.golpe = false; //golpe

alarm[0] = room_speed*10;