/// @description Insert description here
// You can write your code in this editor

//if (follow != noone) {
//	x_to = follow.x;
//	y_to = follow.y;
//}

//x += (x_to - x)/25;
//y += (y_to - y)/25;

//camera_set_view_pos(view_camera[0], x-(cam_width*0.5), y-(cam_height*0.5))

x = clamp(x, follow.x - h_border, follow.x + h_border);
y = clamp(y, follow.y - v_border, follow.y + v_border);