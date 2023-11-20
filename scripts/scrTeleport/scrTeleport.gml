/// @function scrTeleport(_room, _x, _y); Teleport function
/// @param {Asset.GMRoom} _room The room teleported to
/// @param {Real} _x The x location of the room teleported in
/// @param {Real} _y The y location of the room teleported in

function scrTeleport(_room, _x, _y){
	room_goto(_room);
	other.x = _x
	other.y = _y
}

function scrTeleport_frisk(_room, _x, _y) {
	room_goto(_room);
	
	if (instance_exists(objFrisk)) {
		objFrisk.x = _x
		objFrisk.y = _y
	
	}
}