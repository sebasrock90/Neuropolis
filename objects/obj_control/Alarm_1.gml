/// @description incrementar velocidad del juego
if (room_speed >= 90) exit;

room_speed += 15;
alarm[1] = room_speed*20;