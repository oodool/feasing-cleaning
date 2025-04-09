/// @description Insert description here
// You can write your code in this editor
var halfw = w * 0.5;

draw_set_color(c_black);
draw_set_alpha(1);
draw_roundrect_ext(x - halfw - border, y - h - (border * 2), x + halfw + border, y, 15, 15, false);

DrawSetText(c_white, fSign, fa_center, fa_top);
draw_text(x, y - h - border, text);
DrawSetText(-1, -1, -1, -1);