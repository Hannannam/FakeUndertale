/// @description Insert description here
// You can write your code in this editor

switch (state) {
	
	// Begining state: Generate 5 bullets and throw it every some seconds
	case 0:
	
		begin_timer --;
		
		if (begin_timer < 0) {
			instance_create_layer(160, 32, "Bullets", objBullet);
			instance_create_layer(115, 48, "Bullets", objBullet);
			instance_create_layer(205, 48, "Bullets", objBullet);
			instance_create_layer(100, 64, "Bullets", objBullet);
			instance_create_layer(220, 64, "Bullets", objBullet);	
			
			begin_timer = 180
		}
		
		if(instance_exists(objHeart)) {
			if (objHeart.hp == 1) {
				// Destroy bullets and change state
				// TODO: Add break animation
				with (objBullet) {instance_destroy()}
				
				state = 1
			}
		}

		
		break;
	
	// Second state: Circle the player and slowly close in
	case 1:
		
		if (second_trigger) {
			if(instance_exists(objHeart)) {
				var _radius = 64;
				var _bullet_count = 32;
				
				for (var i = 0; i < _bullet_count; i++) {
				    var _angle = i * (360 / _bullet_count);
				    var _radian = degtorad(_angle); // Convert degrees to radians

				    var _bullet_x = objHeart.x + _radius * cos(_radian);
				    var _bullet_y = objHeart.y + _radius * sin(_radian);
					
				    var _bullet = instance_create_layer(_bullet_x, _bullet_y, "Bullets", objBullet);
					_bullet.move_speed = 0.1
					
				}
				
				second_trigger = false;
			}
		}
		
		second_timer --;
		
		if (second_timer < 0) {
			// Destroy bullets and change state
			// TODO: Add break animation
			with (objBullet) {instance_destroy()}
				
			state = 2;
		}
	
		break;
	
	// Final state: Destroy and cutscene starts	
	case 2:
		
		break;
	
		
}




