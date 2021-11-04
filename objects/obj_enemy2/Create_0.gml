/// @description configurar enemigo
//iniciar sprite enemy
sprite_index = spr_police_right;
image_speed = 0;
image_index = 0;

//variable para la velocidad
v = 4;
direction = choose(0,90,180,270);
motion_set(direction, v);