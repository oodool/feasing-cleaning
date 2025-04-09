 /// @description Insert description here
// You can write your code in this editor
vsp = vsp + grv;


///lompat
if (place_meeting(x, y, oEnemy_Jump))
{
	vsp = -13;
}

///balik arah
if (hsp != 0)
{
	image_xscale = sign(hsp)/2.9;
}

///hit player
if (place_meeting(x, y, oPlayer))
{
	with(oPlayer)
	{
		if (stun = 0)
		{
			ScreenShake(2, 20);
			stun = 90;
			speed = 15;
			if (oEnemy.image_xscale > 0) direction = 180;
			else direction = 0;
		}
	}
}

///animasi
if (!place_meeting(x, y + 1, oWall))
{
   	sprite_index = sEnemy_Jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}

if (place_meeting(x, y + 1, oWall))
{
	if (hsp = 0)
	{
		image_speed = 0.2;
		sprite_index = sEnemy_Idle;
	} else
	{
		image_speed = 0.2;
		sprite_index = sEnemy_Run;
	}
}

///hitbox
if (place_meeting(x + hsp, y, oWall)) hsp = -hsp;

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

if (place_meeting(x - 1, y, oWall))
{
	x -= lengthdir_x(speed, direction);
	y -= lengthdir_y(speed, direction);
	speed += 5;
}

if (speed < 0 && !place_meeting(x, y, oWall)) speed++;
if (speed > 0) speed = 0;