/// @description Insert description here
// You can write your code in this editor


margin_side = room_width/3 + 16;
margin_top = room_height - room_width/3;
height = room_width/3 - 32;
border = 3;


// Create Collision Box
collision_top = instance_create_layer(margin_side + border - 29, margin_top + border -  29, "Collision", objCollision32)
