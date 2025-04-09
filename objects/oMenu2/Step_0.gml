/// @description Insert description here
// You can write your code in this editor

menu_x += (menu_x_target - menu_x) / menu_speed;

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
	//	menu_x_target = gui_width + 1000;
	//	menu_committed = menu_cursor;
	//	ScreenShake(2, 40);
	//	menu_control = false;
	//}
	
	var ww = 150; // width of the GUI element (insted of 50)
	var hh = 52; // height of the GUI element (insted of 50)
	
	var xx1 = menu_x_target - ww;
	var yy1 = 650;
	var xx = menu_x_target - ww; // x position of the GUI element (insted of 0)
	var yy = yy1 - (menu_itemheight * 1.5); // y position of the GUI element (insted of 0)
	
	// click regular
	if (point_in_rectangle(mouse_x, mouse_y, xx, yy, xx + ww, yy + hh)) {
		if (mouse_check_button_pressed(mb_left)) {
			if (menu_cursor != 1){
				menu_cursor = 1;
				audio_play_sound(sfxMenuSelect, 1, false);
			}
			else{
				audio_play_sound(sfxMenuConfirm, 1, false);
				menu_x_target = gui_width + 1000;
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
				menu_x_target = gui_width + 1000;
				ScreenShake(2, 40);
				menu_control = false;
			}
		}
	}
	menu_committed = menu_cursor;
}

if (menu_x > gui_width + 500) & (menu_committed != -1)
{
	audio_stop_sound(BGMMenu);
	switch (menu_committed)
	{
		case 1: default:
		oTransition.target = gaem_regular;
		break;
		case 0:
		oTransition.target = gaem_casual;
		break;
	}
	Slide_Transition(TRANS_MODE.RESTART);
	trans_pause = 1;
	
	if (trans_pause = 1 && oTransition.percent = 1)
	{
		instance_create_layer(gui_width/2, gui_height/2, "cutscene", oMusicScene);
		instance_destroy(oMusicMain);
		instance_create_layer(gui_width/2, gui_height/2, "cutscene", oIntro);
		instance_destroy(oDiffDescCasual);
		instance_destroy(oDiffDescRegular);
		instance_destroy(oMenu);
		instance_destroy();
	}
}