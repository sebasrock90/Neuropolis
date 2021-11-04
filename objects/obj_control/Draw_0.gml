/// @description dibujar puntos y vidas

#region //dibujar puntos
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(Font1);
draw_text(32,16, "SCORE: "+string(global.puntos));
#endregion

#region //dibujar vidas
draw_text(room_width/2,16, "LIVES: ");
for (var i = 0; i < global.vida; i += 1)
	{
	draw_sprite_stretched(spr_lives,0,room_width/2+string_width("LIVES: ")+(i*40), 10, 40, 40)
	}
#endregion

#region //dibujar palabra READY!!!
if audio_is_playing(snd_intro)
	{
	draw_set_color(c_yellow)
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(Font1);
	draw_text(room_width/2,room_height/2, "READY!");
	}
#endregion
	
//DIBUJAR BONO
//draw_sprite(spr_beer, 0, room_width-64, 0);

#region //dibujar beers
//draw_text(room_width/2,16, "BEERS: ");
//draw_sprite(spr_beer, 0, room_width-194, 0)

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(Font1);
draw_sprite_stretched(spr_beer,0,room_width-164, 10, 40, 40);
draw_text(room_width-124,20, " "+string(global.beer));
#endregion

#region //dibujar GameOver
if (global.vida == 0)
	{
	draw_set_color(c_red)
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(Font1);
	draw_text(room_width/2,room_height/2, "GAMEOVER - FALSO POSITIVO");
	}
#endregion