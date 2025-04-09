/// @description Insert description here
// You can write your code in this editor
draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

draw_set_color(c_black);
draw_text(menu_x - 3, 555, "FEASING CLEANING");
draw_text(menu_x + 3, 555, "FEASING CLEANING");
draw_text(menu_x, 555 - 3, "FEASING CLEANING");
draw_text(menu_x, 555 + 3, "FEASING CLEANING");

draw_set_font(fMenu2);
draw_text(101, 748, "v1.2023.11.4");
draw_text(99, 748, "v1.2023.11.4");
draw_text(100, 749, "v1.2023.11.4");
draw_text(100, 747, "v1.2023.11.4");

draw_set_color(c_white);
draw_set_font(fMenu);
draw_text(menu_x, 555, "FEASING CLEANING");
draw_set_font(fMenu2);
draw_text(100, 748, "v1.2023.11.4");

draw_set_font(fMenu);
for (var i = 0; i < menu_items; i++)
{
	var offset = 2;
	var txt = menu[i];
	if (menu_cursor = i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_grey;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	depth = -10;
	draw_set_color(c_black);
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx, yy - offset, txt);
	draw_text(xx, yy + offset, txt);
	draw_set_color(col);
	draw_text(xx, yy, txt);
}