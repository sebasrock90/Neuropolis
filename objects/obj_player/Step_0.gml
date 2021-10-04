/// @description Movimientos
if (global.golpe) or audio_is_playing(snd_intro) exit;

// movimiento jugador
//ir hacia la derecha
if keyboard_check(vk_right) && place_free(x+1,y) && place_snapped(32,32)
{
direction = 0;
speed = v;
}

//ir hacia la izquierda
if keyboard_check(vk_left) && place_free(x-1,y) && place_snapped(32,32)
{
direction = 180;
speed = v;
}

//ir hacia arriba
if keyboard_check(vk_up) && place_free(x,y-1) && place_snapped(32,32)
{
direction = 90;
speed = v;
}

//ir hacia abajo
if keyboard_check(vk_down) && place_free(x,y+1) && place_snapped(32,32)
{
direction = 270;
speed = v;
}

//verificar direccion y velocidad para ver animaciones
if speed > 0
{
	image_speed=1;	
}
else
{
	image_speed=0;
	image_index=0;
}

//cambia accion con los movimientos
switch(direction)
{
	case 0:
	sprite_index = spr_player_right;
	break;
	
	case 90:
	sprite_index = spr_player_up;
	break;

	case 180:
	sprite_index = spr_player_left;
	break;

	case 270:
	sprite_index = spr_player_down;
	break;
}
