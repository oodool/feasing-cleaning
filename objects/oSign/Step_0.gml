/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, oPlayer)) and (sign_check = 0)
{
	if (!instance_exists(oText))
	{
		with(instance_create_layer(x, y - 64, "SignTexts", oText))
		{
			text = other.text;
			length = string_length(text);
		}
	}
	sign_check = 1;
}

if (!place_meeting(x, y, oPlayer)) and (sign_check = 1)
{
	instance_destroy(oText);
	sign_check = 0;
}