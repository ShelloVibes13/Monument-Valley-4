var look_ahead_x = x + (move_dir * 16);
var look_down_y = bbox_bottom +1;

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
	sprite_index = spr_crow_walk;
	
	if (crow_sound != noone && audio_is_playing(crow_sound))
	{
		audio_stop_sound(crow_sound);
		crow_sound = noone;
	}
}

if (!place_meeting(look_ahead_x, look_down_y, [obj_barrier, obj_barrier_disappear1]))
{
	move_dir = -move_dir;
}

if (place_meeting(look_ahead_x, look_down_y, obj_barrier_appear))
{
	if (!instance_place(look_ahead_x, look_down_y, obj_barrier_appear).visible)
	{
		move_dir = -move_dir;
	}
}

var hit_wall = place_meeting(x + (walk_speed * move_dir), y, [obj_barrier, obj_barrier_disappear1]);

var hit_room_edge = (x + (walk_speed * move_dir) <0) || (x + (walk_speed * move_dir) > room_width);

if (hit_wall || hit_room_edge)
{
	move_dir = -move_dir;
}

x += walk_speed * move_dir;

image_xscale = -base_scale * move_dir;