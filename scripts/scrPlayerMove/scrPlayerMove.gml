// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function basic_motion(speed); Basic Movement of character
/// @param {real} _speed The speed of the character
/// @param {array} _collision_obj The array of objects to check collision

function basic_motion(_speed, _collision_obj){
	// Check for keyboard input and set the player's speed accordingly
	
	// Horizontal movement
	var _move_x = _speed * (keyboard_check(vk_right) - keyboard_check(vk_left));
	
	// Vertical movement
	var _move_y = _speed * (keyboard_check(vk_down) - keyboard_check(vk_up));
	
	
	if (place_meeting(x + _move_x, y, _collision_obj)) {
		_move_x = 0;
	}
	
	if (place_meeting(x, y + _move_y, _collision_obj)) {
		_move_y = 0;
	}
	
	
	x += _move_x;
	y += _move_y;
	
	if (_move_x > 0) {
		sprite_index = Swalkx;
		image_xscale = 1;
	} else if (_move_x < 0) {
		sprite_index = Swalkx;
		image_xscale = -1;
	} else if (_move_y > 0) {
		sprite_index = Sfwalky;
		image_xscale = 1;
	} else if (_move_y < 0) {
		sprite_index = Sbwalky;
		image_xscale = 1;
	} else {
		sprite_index = Sfstand;	
		image_xscale = 1;

	}
	

}