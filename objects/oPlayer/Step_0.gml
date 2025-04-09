 /// @description Insert description here
// You can write your code in this editor
//key_left = keyboard_check(ord("A"));
//key_right = keyboard_check(ord("D")); 
//key_jump = keyboard_check_pressed(vk_space);

if (stun = 0) hsp = move * walksp;
else hsp = 0;

vsp = vsp + grv;

mouse = point_direction(x, y, mouse_x, mouse_y); 

///restart

if (keyboard_check_pressed(ord("R")))
{
	Slide_Transition(TRANS_MODE.RESTART);
	trans_pause = 1;
}

if (trans_pause = 1) and (oTransition.percent = 1)
{
	x = global.checkpoint_x;
	y = global.checkpoint_y;
	trans_pause = 0;
}

///exit
if (keyboard_check_pressed(vk_escape))
{
	Slide_Transition(TRANS_MODE.RESTART);
	escape = 1;
}

if (escape = 1) and (oTransition.percent = 1) 
{
	game_restart();
}

///balik arah
if (hsp != 0)
{
	image_xscale = move/3;
}

///lompat
if (place_meeting(x, y + 1, oWall)) and (key_jump) and (stun = 0)
{
	vsp = -10;
	jump = 0;
	audio_play_sound(sfxMenuSelect, 1, false);
}

///lompat dua
if (!place_meeting(x, y + 1, oWall)) and (key_jump) and (jump < 1)
{
	vsp = -10;
	jump++;
	audio_play_sound(sfxMenuSelect, 1, false);
}

///animasi
if (stun = 0)
{
	dead_audio = 0;
	if (!place_meeting(x, y + 1, oWall))
	{
	   	sprite_index = sPlayer_Jump;
		image_speed = 0;
		if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	} else
	{
		image_speed = 1;
		with (oGun) sprite_index = sGun;
		if (hsp = 0) sprite_index = sPlayer_Idle;
		else 
		{
			sprite_index = sPlayer_Run;
			if (run_sfx = 0) 
			{
				audio_play_sound(sfxRun, 1, false);
				run_sfx = 13;
			}
			run_sfx--;
		}
	}
} else
{
	if (dead_audio = 0)
	{
		audio_play_sound(sfxDead, 1, false)
		dead_audio = 1;
	}
	image_speed = 1;
	sprite_index = sPlayer_Stun;
	with (oGun) sprite_index = sGun_Stun;
}

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

if (place_meeting(x, y, oSpike))
{
	ScreenShake(2, 10);
	stun = 120;
	Slide_Transition(TRANS_MODE.RESTART);
	trans_pause = 1;
}

///recoil
if (oGun.shoot) and (recoil_delay = 0) and (stun = 0)
{
	recoil_delay = -20;
	direction = oGun.image_angle;
	speed = -20;
	vsp = 0;
}

if (place_meeting(x, y, oWall))
{
	speed = -speed - 5;
	vsp = 0;
}

if (speed < 0 && !place_meeting(x, y, oWall)) speed++;
if (speed > 0 && !place_meeting(x, y, oWall)) speed--;
if (recoil_delay != 0) recoil_delay++;
if (stun != 0) stun--;