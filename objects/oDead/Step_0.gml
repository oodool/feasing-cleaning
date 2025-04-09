/// @description Insert description here
// You can write your code in this editor
	vsp = vsp + grv;
	///hitbox
	if (place_meeting(x + hsp, y, oWall))
	{
		while (!place_meeting(x + sign(hsp), y, oWall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}

	x = x + hsp;

	if (place_meeting(x, y + vsp, oWall))
	{
		while (!place_meeting(x, y + sign(vsp), oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}

	y = y + vsp;
	
	if (place_meeting(x + 1, y, oWall))
	{
		speed = -speed;
		y -= 25;
	}

	if (speed != 0 && !place_meeting(x, y, oWall)) speed += -sign(speed);
	if (speed = 0) done = 1;
	
	if (fade != 0)fade--;
	
	if (fade = 0 && image_alpha != 0) image_alpha -= 0.01;
