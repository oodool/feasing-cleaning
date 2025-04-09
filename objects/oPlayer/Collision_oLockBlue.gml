/// @description Insert description here
// You can write your code in this editor
with(other)
{
	if (lock_pause = 0) image_speed = 1;
	if (sprite_index = 21 && lock_pause < 20)
	{
		image_speed = 0;
		lock_pause++;
	}
	if (lock_pause = 20) image_alpha -= 0.05;
}