/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(sHealthBarEmpty, 0, healthbar_x, healthbar_y, healthbar_width, healthbar_height);
draw_sprite_stretched(sHealthBar, 0, healthbar_x, healthbar_y, (hp/hp_max) * healthbar_width, healthbar_height);

draw_set_color(c_white);
draw_set_font(fntUI);
	
draw_text(healthbar_x - padding, healthbar_y , "HP")
draw_text(healthbar_x + healthbar_width + padding, healthbar_y, string(hp) + "  /  " + string(hp_max))




