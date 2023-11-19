/// @function draw_box_gui(_margin_side, _margin_top, _height, _border); Create a black and white box
/// @param {Real} _margin_side The equal distance between left and right
/// @param {Real} _margin_top The margin at the top of the screen
/// @param {Real} _height The height of the box
/// @param {Real} _border The white border length

function draw_box_gui(_margin_side, _margin_top, _height, _border){
	draw_set_color(c_black);
	draw_rectangle(_margin_side, _margin_top, display_get_gui_width() - _margin_side, _margin_top + _height, false);
	
	draw_set_color(c_white);
	draw_rectangle(_margin_side + _border, _margin_top + _border, display_get_gui_width() - _border - _margin_side,  _margin_top + _height - _border, false);
	
	draw_set_color(c_black);
	draw_rectangle(_margin_side +(_border*2), _margin_top +(_border*2), display_get_gui_width() - (_border*2) - _margin_side,  _margin_top + _height - (_border*2), false);
}

/// @function draw_box(_margin_side, _margin_top, _height, _border); Create a black and white box
/// @param {Real} _margin_side The equal distance between left and right
/// @param {Real} _margin_top The margin at the top of the screen
/// @param {Real} _height The height of the box
/// @param {Real} _border The white border length

function draw_box(_margin_side, _margin_top, _height, _border){
	draw_set_color(c_black);
	draw_rectangle(_margin_side, _margin_top, room_width - _margin_side, _margin_top + _height, false);
	
	draw_set_color(c_white);
	draw_rectangle(_margin_side + _border, _margin_top + _border, room_width - _border - _margin_side,  _margin_top + _height - _border, false);
	
	draw_set_color(c_black);
	draw_rectangle(_margin_side +(_border*2), _margin_top +(_border*2), room_width - (_border*2) - _margin_side,  _margin_top + _height - (_border*2), false);
}