if (distance_to_object(obj_player) <=5)
{
	sprite_index = spr_crow_cawing;
	
	if (crow_sound == noone || !audio_is_playing(crow_sound))
	{
		crow_sound = audio_play_sound(snd_crow_caw, 1, true);
	}
}
else
{
	sprite_index = spr_crow_idle;
	
	if (crow_sound != noone && audio_is_playing(crow_sound))
	{
		audio_stop_sound(crow_sound);
		crow_sound = noone;
	}
	
	show_debug_message("Player has left")
}