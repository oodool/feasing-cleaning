/// @description Insert description here
// You can write your code in this editor
if (instance_exists(oPlayer))
{
	xTo = oPlayer.x;
	yTo = oPlayer.y;
}

draw_set_color(c_white);
draw_set_font(fScore);
draw_text(x, y, points);
draw_text(x + 17, y, "/9 musuh dikalahkan!");
DrawSetText(-1, -1, -1, -1);