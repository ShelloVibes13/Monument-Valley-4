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