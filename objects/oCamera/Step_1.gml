 /// @description Insert description here
// You can write your code in this editor

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - (1/shake_length) * shake_magnitude)

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if (layer_exists("Background"))
{
	layer_y("Background", y/3.5)
}