/// @desc Player Logic

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);

var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (hsp != 0) image_xscale =sign(hsp);

if (keyboard_check(vk_left) || keyboard_check(vk_right))
{
	sprite_index = spr_player_walk;
}

if (hsp == 0)
{
	sprite_index = spr_player_idle;
}

if (!place_meeting(x,y+1,obj_barrier))
{
	sprite_index = spr_player_jump;
}

else if (hsp != 0)
{
	sprite_index = spr_player_walk;
}

if (place_meeting(x,y+1,obj_barrier)) && (key_jump)
{
	vsp = -jumpsp
}

if (place_meeting(x+hsp,y,obj_barrier))
{
	while (!place_meeting(x+sign(hsp),y,obj_barrier))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

if (place_meeting(x,y + vsp,obj_barrier))
{
	while (!place_meeting(x,y+sign(vsp),obj_barrier))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

