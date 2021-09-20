// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DibujarCorazones(x0, y0, scale, hearts, order) {
	var corazon_offset;
	if (order == 0) {
		corazon_offset = x0;
	} else {
		corazon_offset = x0 - sprite_get_width(spr_corazon);
	}
	
	for (var i = 1; i <= global.maximo_vidas; i++) {
		if (i <= hearts) {
			if (i <= 3) {
				draw_sprite_ext(spr_corazon, 0, corazon_offset, y0 - sprite_get_height(spr_corazon) / 2,
				scale, scale, 0, -1, 1); 
			} else {
				draw_sprite_ext(spr_corazon, 1, corazon_offset, y0 - sprite_get_height(spr_corazon) / 2,
				scale, scale, 0, -1, 1); 
			}
		} else {
			draw_sprite_ext(spr_corazon, 2, corazon_offset, y0 - sprite_get_height(spr_corazon) / 2,
			scale, scale, 0, -1, 1);
		}
	
		if (order == 0) {
			corazon_offset += (sprite_get_width(spr_corazon) * scale) * 1.1; 
		} else {
			corazon_offset -= (sprite_get_width(spr_corazon) * scale) * 1.1; 
		}
	}
}