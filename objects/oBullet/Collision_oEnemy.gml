/// @description Insert description here
// You can write your code in this editor
with (other)
{
	if (hp > 0) 
	{
		flash = 3;
		hp--;
	}
	if (hp = 0)
	{
		hspeed = 20;
		direction = other.image_angle;
		hp--;
		if (hp < 0)
		{
			image_speed = 0;
			sprite_index = sEnemy_Dead;
			if (!place_meeting(x, y + 1, oWall)) image_index = 0 else image_index = 1;
		}
	}
}

instance_destroy();