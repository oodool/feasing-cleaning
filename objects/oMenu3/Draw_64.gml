/// @description Insert description here
// You can write your code in this editor
draw_set_font(fMenu);
DrawSetText(c_white, fMenu, fa_middle, fa_center);
draw_text(display_get_gui_width()/2, display_get_gui_height()/2, "Permainan Berakhir...");

for (var i = 0; i < menu_items; i++)
{
	var txt = menu[i];
	if (menu_cursor = i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var yy = menu_y/2 + 128 - (menu_itemheight * (i * 1.5));
	
	draw_set_color(col);
	draw_text(menu_x/2, yy, txt);
}