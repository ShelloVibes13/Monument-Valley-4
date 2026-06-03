if (should_move)
{
	if (y < ground_floor)
	{
		y += move_speed;
		
		if (y > ground_floor)
		{
			y = ground_floor;
		}
	}
}

if (!should_move)
{
	if (y < top_position)
	{
		y += move_speed;
		
		if (y > top_position)
		{
			y = top_position;
		}
	}
}