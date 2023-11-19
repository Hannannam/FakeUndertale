// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function basic_motion_frisk(_can_move, _speed, _collision_obj, _last_sprite); Basic Movement of character
/// @param {bool} _can_move Bool if character can move
/// @param {real} _speed The speed of the character
/// @param {array} _collision_obj The array of objects to check collision
/// @param {Asset.GMSprite} _last_sprite The last known sprite 

function basic_motion_frisk(_can_move, _speed, _collision_obj, _last_sprite){
	// Check for keyboard input and set the player's speed accordingly
	
	var _move_var = basic_motion(_can_move, _speed, _collision_obj);
	var _move_x = _move_var[0];
	var _move_y = _move_var[1];
	
	
	/// Movement Animation
	// Right
	if (_move_x > 0) {
		sprite_index = sFriskSideWalk;
		image_xscale = 1;
		_last_sprite = sFriskSideWalk;
	// Left
	} else if (_move_x < 0) {
		sprite_index = sFriskSideWalk;
		image_xscale = -1;
		_last_sprite = sFriskSideWalk;
	// Down
	} else if (_move_y > 0) {
		sprite_index = sFriskWalkDown;
		image_xscale = 1;
		_last_sprite = sFriskWalkDown;
	// Up
	} else if (_move_y < 0) {
		sprite_index = sFriskWalkUp;
		image_xscale = 1;
		_last_sprite = sFriskWalkUp;
	} else {
		// Stop direction
		if (_last_sprite == sFriskSideWalk) {
			sprite_index = sFriskSide;
		} else if (_last_sprite == sFriskWalkDown) {
			sprite_index = sFriskDown;
			image_xscale = 1;
		} else if (_last_sprite == sFriskWalkUp) {
			sprite_index = sFriskUp
			image_xscale = 1;
		}	
	}
	
	return _last_sprite
}

/// @function basic_motion(_can_move, _speed, _collision_obj); Basic Movement from keyboard
/// @param {bool} _can_move Bool if character can move
/// @param {real} _speed The speed of the character
/// @param {array} _collision_obj The array of objects to check collision
function basic_motion(_can_move, _speed, _collision_obj) {
	// Check for keyboard input and set the player's speed accordingly
	
	// Horizontal movement
	var _move_x = _speed * (keyboard_check(vk_right) - keyboard_check(vk_left));
	
	// Vertical movement
	var _move_y = _speed * (keyboard_check(vk_down) - keyboard_check(vk_up));
	
	
	if (place_meeting(x + _move_x, y, _collision_obj) || !_can_move) {
		_move_x = 0;
	}
	
	if (place_meeting(x, y + _move_y, _collision_obj) || !_can_move) {
		_move_y = 0;
	}
	
	
	x += _move_x;
	y += _move_y;
	
	return [_move_x, _move_y];

}