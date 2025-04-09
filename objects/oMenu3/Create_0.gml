/// @description Insert description here
// You can write your code in this editor
gui_width = 1366;
gui_height = 768;
gui_margin = 32;

menu_x = gui_width;
menu_y = gui_height + 128;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[1] = "Kembali ke menu utama";
menu[0] = "Keluar permainan";

menu_items = 2;
menu_cursor = 1;
trans_pause = 0;