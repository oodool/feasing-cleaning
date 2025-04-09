/// @description Insert description here
// You can write your code in this editor

///lever a
if (oLever3a.active = 1 && check_active1 = 0)
{
	weight += 1;
	ScreenShake(2, 40);
	check_active1 = 1;
}

if (oLever3a.active = 0 && check_active1 = 1)
{
	weight -= 1;
	ScreenShake(2, 40);
	check_active1 = 0;
}

///lever b

if (oLever3b.active = 1 && check_active2 = 0)
{
	weight += 3;
	ScreenShake(2, 40);
	check_active2 = 1;
}

if (oLever3b.active = 0 && check_active2 = 1)
{
	weight -= 3;
	ScreenShake(2, 40);
	check_active2 = 0;
}

///lever c

if (oLever3c.active = 1 && check_active3 = 0)
{
	weight += 7;
	ScreenShake(2, 40);
	check_active3 = 1;
}

if (oLever3c.active = 0 && check_active3 = 1)
{
	weight -= 7;
	ScreenShake(2, 40);
	check_active3 = 0;
}

///lever d

if (oLever3d.active = 1 && check_active4 = 0)
{
	weight += 8;
	ScreenShake(2, 40);
	check_active4 = 1;
}

if (oLever3d.active = 0 && check_active4 = 1)
{
	weight -= 8;
	ScreenShake(2, 40);
	check_active4 = 0;
}

///lever e

if (oLever3e.active = 1 && check_active5 = 0)
{
	weight += 9;
	ScreenShake(2, 40);
	check_active5 = 1;
}

if (oLever3e.active = 0 && check_active5 = 1)
{
	weight -= 9;
	ScreenShake(2, 40);
	check_active5 = 0;
}

///buka pintu

if (weight = 17 && open_length < 97)
{
	if (open_length = 1) audio_play_sound(sfxGate, 1, false);
	y += 4;
	open_length += 4;
	ScreenShake(2, 40);
}
if (weight != 17 && open_length > 0)
{
	if (open_length = 96) audio_play_sound(sfxGate, 1, false);
	y -= 4;
	open_length -= 4;
	ScreenShake(2, 40);
}