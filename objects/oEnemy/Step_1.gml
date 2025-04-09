/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_create_layer(x, y, layer, oDead);
	instance_destroy();
	with (oScore) points++;
	audio_play_sound(sfxDead, 1, false);
}