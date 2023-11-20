/// @description Insert description here
// You can write your code in this editor

if (is_active == true) {
	if (showing_dialog == false) {
		if (dialog.count() <= 0) {
			instance_destroy();
			objFrisk.can_move = true;
			
			if (post_dialog_action != noone) {
				if (room_exists(post_dialog_action)) {
					scrTeleport_frisk(post_dialog_action, post_dialogue_x, post_dialogue_y)
				} else {
					// TODO: Teleport player after conversation
				}
			}
			
			return;
		}
	
		current_dialog = dialog.pop();
		showing_dialog = true;
		} else {
		if (keyboard_check_released(key_next)) {
			showing_dialog = false;
			alpha = 0;
		}
	}
}





