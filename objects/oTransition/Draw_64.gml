/// @description Insert description here
// You can write your code in this editor
if (mode != TRANS_MODE.OFF)
{
	depth = -100;
	draw_set_color(c_black);
	draw_rectangle(0, 0, w, percent * h_half, false);
	draw_rectangle(0, h, w, h - (percent * h_half), false);
}