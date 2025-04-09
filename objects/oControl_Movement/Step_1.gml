/// @description Insert description here
// You can write your code in this editor
oPlayer.key_jump = 0;
oPlayer.move = 0;
if button != 0 button--;


for (var i = 0; i < 2; i++){
// tembak
	if (point_in_rectangle(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i), xx2, yy, xx2 + ww, yy + hh)) {
		if(device_mouse_check_button_pressed(i, mb_left)){
					button = 5;
					oGun.shoot = 1;
				}
}

// lompat
	if (point_in_rectangle(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i), xx3, yy, xx3 + ww, yy + hh)) {
				if(device_mouse_check_button_pressed(i, mb_left)){
					oPlayer.key_jump = 1;
					button = 5;
				}
}

// ke kiri
	
		if (point_in_rectangle(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i), xx, yy, xx + ww, yy + hh)) {
		if(device_mouse_check_button(i, mb_left)){
					oPlayer.move = -1;
					button = 5;
				}
}

// ke kanan
	if (point_in_rectangle(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i), xx1, yy, xx1 + ww, yy + hh)) {
				if(device_mouse_check_button(i, mb_left)){
					oPlayer.move = 1;
					button = 5;
				 }
	}
}






