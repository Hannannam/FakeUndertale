// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// @function dialog_trigger(_dialog_obj); Find the nearest dialog_obj and triggers it
// @param {Real} _x Nearest x position of dialog box
// @param {Real} _y Nearest y position of dialog box
// @param {Asset.GMObject} _dialog_obj The object to trigger

function dialog_trigger(_x, _y,_dialog_obj){
	var _nearest_dialog = instance_nearest(_x, _y, _dialog_obj);
	if (_nearest_dialog != noone) {
	    _nearest_dialog.is_active = true;
	    objFrisk.can_move = false;
	}

}