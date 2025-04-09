/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x;
y = oPlayer.y;

firingdelay --;
recoil = max(0, recoil - 1);

if (shoot) and (firingdelay < 0) and (oPlayer.stun = 0)
{
	audio_play_sound(sfxGun, 1, false);
	recoil = 20;
	firingdelay = 21;
	ScreenShake(2, 10);
	with (instance_create_layer(x, y, "Bullet", oBullet))
	{
		speed = 35;
		direction = other.image_angle;
		image_angle = direction;
	}
	with (oPlayer)
	{
		recoil = 1;
		if (oGun.image_angle > 90 && oGun.image_angle < 270) image_xscale = -1/3;
		else image_xscale = 1/3;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
} else
{
	image_yscale = 1;
}

if oControl_Movement.button = 0 and oPlayer.hsp = 0  and oPlayer.vsp = 0 image_angle = point_direction(x, y, mouse_x, mouse_y);
shoot = 0;