/// @description Insert description here
// You can write your code in this editor
w = 1366;
h = 768;
h_half = h/2;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;