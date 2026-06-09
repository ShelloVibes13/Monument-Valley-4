if (distance_to_object(obj_crow) <=5)
{
	visible = false;
	
	solid = false;
	
	with (obj_barrier_disappear2)
	{
		visible = false;
		
		mask_index = 1;
	}
}
else
{
	visible = true;
	
	solid = true;
	
	with (obj_barrier_disappear2)
	{
		visible = true;
		
		mask_index = sprite_index;
	}
}