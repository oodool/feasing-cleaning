/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, oPlayer))
{
	audio_stop_sound(BGM);
	if (oScore.points = 9) oTransition.target = gaem_end_100;
	else oTransition.target = gaem_end;
	Slide_Transition(TRANS_MODE.GOTO);
}