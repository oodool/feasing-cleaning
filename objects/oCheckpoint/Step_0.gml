/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, oPlayer))
{
	if (other.checkpoint_check = 0)
	{
		other.checkpoint_check = 1;
		global.checkpoint_x = oPlayer.x;
		global.checkpoint_y = oPlayer.y;
		instance_create_layer(x, y, "SignTexts", oCheckpointText);
	}
}