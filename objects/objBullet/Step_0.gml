/// @description Insert description here
// You can write your code in this editor



switch (state) {
	
	case 0:
		if instance_exists(objHeart) {
			var _dir = point_direction(x, y, objHeart.x, objHeart.y)	
	
			_move_x = lengthdir_x(move_speed, _dir);
			_move_y = lengthdir_y(move_speed, _dir);
	
			x += _move_x;
			y += _move_y;
			
			track_time --;
			if (track_time < 0) {
				state = 1	
			}
			
		}
		
	break;
	
	case 1: 
		x += _move_x
		y += _move_y
		
	break;
}


// Cleanup

// Hit confirmed
if (hit_confirm == true) {
	destroy = true;
}

// Out of the room
if (x > room_width || y > room_height || x < 0 || y < 0) {
	destroy = true;	
}

// Destroy bullet
if (destroy == true) {
	instance_destroy();
}

