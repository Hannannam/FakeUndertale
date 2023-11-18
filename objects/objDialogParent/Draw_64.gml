/// @description Insert description here
// You can write your code in this editor

if (showing_dialog == true) {
	var _margin_side = 120;
	var _margin_top = 30;
	var _text_x = 0;
	var _text_y = 18;
	var _height = 32;
	var _border = 5;
	var _padding = 16;
	
	
	_height = string_height(current_dialog.message);
	
	// Scale Sprite by 2
	if (sprite_get_height(current_dialog.sprite) * 2 > _height) {
		_height = sprite_get_height(current_dialog.sprite) * 2
	}
	
	_height += _padding * 2;
	// Scale Sprite by 2
	_text_x = sprite_get_width(current_dialog.sprite) * 2 + (_padding * 2)
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(_margin_side, _margin_top, display_get_gui_width() - _margin_side, _margin_top + _height, false);
	
	draw_set_color(c_white);
	draw_rectangle(_margin_side + _border, _margin_top + _border, display_get_gui_width() - _border - _margin_side,  _margin_top + _height - _border, false);
	
	draw_set_color(c_black);
	draw_rectangle(_margin_side +(_border*2), _margin_top +(_border*2), display_get_gui_width() - (_border*2) - _margin_side,  _margin_top + _height - (_border*2), false);
	
	if (current_dialog.sprite != -1) {
		// Scale Sprite by 2
		draw_sprite_ext(current_dialog.sprite, 0, _margin_side + _border * 3, _margin_top + _border *3, 2, 2, 0, c_white, 1);
	}
	
	draw_set_color(c_white);
	draw_set_font(fntDialog);

	draw_text_ext(_margin_side + _text_x, _margin_top + _text_y, current_dialog.message, 16, display_get_gui_width() - 192 - _margin_side);
	
	alpha = lerp(alpha, 1, 0.06);
}

draw_set_alpha(1);