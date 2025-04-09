/// @description Insert description here
// You can write your code in this editor

if (menu_control)
{
	//if (keyboard_check_pressed(ord("W")))
	//{
	//	audio_play_sound(sfxMenuSelect, 1, false);
	//	menu_cursor++;
	//	if(menu_cursor >= 2) menu_cursor = 0;
	//}
	//if (keyboard_check_pressed(ord("S")))
	//{
	//	audio_play_sound(sfxMenuSelect, 1, false);
	//	menu_cursor--;
	//	if(menu_cursor <= -1) menu_cursor = 1;
	//}
	//if (keyboard_check_pressed(vk_space))
	//{
	//	audio_play_sound(sfxMenuConfirm, 1, false);
	//	menu_committed = menu_cursor;
	//	ScreenShake(2, 40);
	//	menu_control = false;
	//}
	
	var ww = 750; // width of the GUI element (insted of 50)
	var hh = 52; // height of the GUI element (insted of 50)
	
	var xx1 = (menu_x - ww)/2;
	var yy1 = menu_y/2 + 108;
	var xx = (menu_x - ww)/2; // x position of the GUI element (insted of 0)
	var yy = menu_y/2 + 108 - (menu_itemheight * 1.5); // y position of the GUI element (insted of 0)
	
	// click regular
	if (point_in_rectangle(mouse_x, mouse_y, xx, yy, xx + ww, yy + hh)) {
		if (mouse_check_button_pressed(mb_left)) {
			if (menu_cursor != 1){
				menu_cursor = 1;
				audio_play_sound(sfxMenuSelect, 1, false);
			}
			else{
				audio_play_sound(sfxMenuConfirm, 1, false);
				ScreenShake(2, 40);
				menu_control = false;
			}
		}
	}
	
	// click casual
	if (point_in_rectangle(mouse_x, mouse_y, xx1, yy1, xx1 + ww, yy1 + hh)) {
		if (mouse_check_button_pressed(mb_left)) {
			if (menu_cursor != 0){
				menu_cursor = 0;
				audio_play_sound(sfxMenuSelect, 1, false);
			}
			else{
				audio_play_sound(sfxMenuConfirm, 1, false);
				ScreenShake(2, 40);
				menu_control = false;
			}
		}
	}
	menu_committed = menu_cursor;
}

if (menu_committed != -1) and (!menu_control)
{
	audio_stop_sound(BGMIntro);
	switch (menu_committed)
	{
		case 1: default:
		break;
		case 0:
		game_end();
		break;
	}
	Slide_Transition(TRANS_MODE.RESTART);
	trans_pause = 1;
	if (trans_pause = 1) && (oTransition.percent = 1)game_restart();
}