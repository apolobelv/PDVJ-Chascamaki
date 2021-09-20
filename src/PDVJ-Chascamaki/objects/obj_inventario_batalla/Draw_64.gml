/// @description Dibujar interfaz
var inventario_ancho = 19;
var inventario_alto = 25;
var inventario_x = 1;
var inventario_y = 8;

DibujarCuadro(inventario_x, inventario_y, inventario_ancho, inventario_alto, spr_panel, 0);

var text_x = (inventario_x + inventario_ancho / 2) * unit_size;
var text_y = (inventario_y + 1.5) * unit_size;

draw_set_halign(fa_center);
draw_set_color(c_navy);
draw_text(text_x, text_y, "INVENTARIO");
draw_set_halign(fa_left);

var offset = 3;
for (var i = 0; i < ds_list_size(global.items); i++) {
	text_x = (inventario_x + 3) * unit_size;
	text_y = (inventario_y + 1 + offset) * unit_size;
	var flecha_x = (text_x / unit_size - 2) * unit_size;
	if (i == object_select) {
		draw_sprite_ext(spr_flecha, 0, flecha_x, text_y, .5, .5, 0, c_orange, 1);
		draw_set_color(c_orange);
		draw_text(text_x, text_y, global.items[| i][0]);
		draw_text(text_x + 220, text_y, global.items[| i][1]);
	} else {
		draw_set_color(c_navy);
		draw_text(text_x, text_y, global.items[| i][0]);
		draw_text(text_x + 220, text_y, global.items[| i][1]);
	}
	offset += 2;
}