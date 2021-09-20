/// @description Insert description here
// You can write your code in this editor
if (!bala) {
	var fondo_vida_width = 50;
	var barra_vida_width = 50 * (porcentaje_vida / 100);

	draw_sprite_ext(spr_fondo_barra_vida, 0, x-fondo_vida_width/2, y-30, fondo_vida_width, 0.9, 0, -1, 1);
	if (porcentaje_vida != 0) {
		if (porcentaje_vida >= 50) {
			draw_sprite_ext(spr_barra_vida, 0, x-fondo_vida_width/2, y-28, barra_vida_width, 0.85, 0, c_lime, 1);
		} else if (porcentaje_vida <= 20) {
			draw_sprite_ext(spr_barra_vida, 0, x-fondo_vida_width/2, y-28, barra_vida_width, 0.85, 0, c_red, 1);
		} else {
			draw_sprite_ext(spr_barra_vida, 0, x-fondo_vida_width/2, y-28, barra_vida_width, 0.85, 0, c_yellow, 1);
		}
	}
}