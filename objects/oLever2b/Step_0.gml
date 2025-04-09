/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, oPlayer)) 
{
	if (position_meeting(mouse_x, mouse_y, self))
	{
		if (mouse_check_button_pressed(mb_left)){
			lever_check++;
			audio_play_sound(sfxLever, 1, false);
		}
	}
	if (lever_check > 1) lever_check = 0;
	switch(lever_check)
	{
		case 0:
		image_index = 0;
		active = 0;
		break;
		
		case 1:
		image_index = 1;
		active = 1;
		break;
	}
}