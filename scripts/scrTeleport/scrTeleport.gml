/// @function teleport(_room, _x, _y); Teleport function
/// @param {Asset.GMRoom} _room The room teleported to
/// @param {Real} _x The x location of the room teleported in
/// @param {Real} _y The y location of the room teleported in

function teleport(_room, _x, _y){
	room_goto(_room);
	other.x = _x
	other.y = _y
	
	show_debug_message("Test")
	show_debug_message(objFrisk.x)
	show_debug_message(other.x)	
	show_debug_message("Test")

}