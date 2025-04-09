/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left))
{
	if (show_intro <= 3) sprite_index = intro[show_intro++];
	else 
	{
		audio_stop_sound(BGMIntro);
		Slide_Transition(TRANS_MODE.GOTO);
	}
}