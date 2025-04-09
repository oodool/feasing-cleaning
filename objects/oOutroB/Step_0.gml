/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left))
{
	if (show_outro <= 1) sprite_index = outro[show_outro++];
	else 
	{
		Slide_Transition(TRANS_MODE.RESTART);
		trans_pause = 1;
	}
}

if (trans_pause = 1) && (oTransition.percent = 1)
{
	instance_create_layer(x, y, "Intro", oMenu3);
	instance_destroy();
}