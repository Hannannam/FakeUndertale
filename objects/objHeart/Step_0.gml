/// @description Insert description here
// You can write your code in this editor


var _battle_box = instance_find(objBattleBox, 0);
if (_battle_box != noone) {
	var _x =  _battle_box.margin_side + (_battle_box.border * 2)
	var _side = _battle_box.height - (_battle_box.border * 6)
	var _y = _battle_box.margin_top +(_battle_box.border * 2)
	
	basic_motion_heart(can_move, move_speed, _x, _y, _side);
}




