if (distance_to_object(obj_player) <=5)
{
	visible = false;
	
	solid = false;
	
	with (obj_barrier_appear)
	{
		visible = true;
		
		mask_index = sprite_index;
	}
}
else
{
	visible = true;
	
	solid = true;
	
	with (obj_barrier_appear)
	{
		visible = false;
		
		mask_index = sprite_index;
	}
}