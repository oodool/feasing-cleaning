/// @description Insert description here
// You can write your code in this editor
if (oLever2a.active = 1 && open_length < 97)
{
	if (open_length = 1) audio_play_sound(sfxGate, 1, false);
	x += 4;
	open_length += 4;
	ScreenShake(2, 40);
}
if (oLever2a.active = 0 && open_length > 0)
{
	if (open_length = 96) audio_play_sound(sfxGate, 1, false);
	x -= 4;
	open_length -= 4;
	ScreenShake(2, 40);
}