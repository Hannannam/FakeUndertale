// Script assets have changed for v2.3.0 see

/// @function basic_motion_heart(_can_move, _speed, _battle_box); Basic Movement from keyboard
/// @param {bool} _can_move Bool if character can move
/// @param {real} _speed The speed of the character
/// @param {real} _box_x The x coordinate of collision box
/// @param {real} _box_y The y coordinate of collision box
/// @param {real} _box_side The width/heigh of the collision box
function basic_motion_heart(_can_move, _speed, _box_x, _box_y, _box_side,) {
	// Check for keyboard input and set the player's speed accordingly
	
	// Horizontal movement
	var _move_x = _speed * (keyboard_check(vk_right) - keyboard_check(vk_left));
	
	// Vertical movement
	var _move_y = _speed * (keyboard_check(vk_down) - keyboard_check(vk_up));


	if (x + _move_x < _box_x || x + _move_x > _box_x + _box_side || !_can_move) {
		_move_x = 0;
	}
	
	if (y + _move_y < _box_y || y + _move_y > _box_y + _box_side || !_can_move) {
		_move_y = 0;
	}
	
	
	x += _move_x;
	y += _move_y;
	
}