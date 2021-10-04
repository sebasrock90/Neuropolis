/// @description controlar nivel
#region
if !(audio_is_playing(snd_intro))
	{
	instance_activate_object(obj_enemy1);	
	}
#endregion

#region
//destroy todo cuando muera

if global.vida = 0
{
	with(obj_enemy1){
	instance_destroy();
	};
	
	with(obj_player){
	instance_destroy();
	};
	
	with(obj_point){
	instance_destroy();
	};
	
	with(obj_powerpoint){
	instance_destroy();
	};
	
	with(obj_bono){
	instance_destroy();
	};
	
}

#endregion

//verificar si supera el nivel o el jugador muere
#region
if instance_number(obj_point) == 0 and instance_number(obj_powerpoint) == 0 and instance_number(obj_bono) == 0 and global.vida != 0
	{
	if room_next(room) != -1
		{
			audio_stop_all();
			room_goto_next();
		}
		else
		{
			audio_stop_all();
			room_goto(rm_gameover);
			instance_destroy();
		}
	
	}

#endregion
