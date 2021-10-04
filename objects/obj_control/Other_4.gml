/// @description el nivel empiece de nuevo
if room == rm_level1 exit;

audio_play_sound(snd_intro,10, false);
instance_deactivate_object(obj_enemy1);


global.power = false; //poder
global.beer = false; //bonos
global.golpe = false; //golpe

alarm[1] = room_speed*15; //velocidad juego incrementada
room_speed=50;