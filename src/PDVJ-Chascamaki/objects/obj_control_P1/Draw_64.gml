/// @description Insert description here
#region Botones
if (boton_select = 0) {
	DibujarCuadro(boton1X, botonY, boton_ancho, boton_alto, spr_boton, 1);
	draw_set_color(c_orange);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	var _x = (boton1X + boton_ancho / 2) * unit_size;
	var _y = (botonY + boton_alto / 2) * unit_size;
	draw_text(_x, _y, "DISPARA!");
	DibujarCuadro(boton2X, botonY, boton_ancho, boton_alto, spr_boton, 0);
	draw_set_color(c_navy);
	_x = (boton2X + boton_ancho / 2) * unit_size;
	_y = (botonY + boton_alto / 2) * unit_size;
	draw_text(_x, _y, "OBJETOS");
} else {
	DibujarCuadro(boton1X, botonY, boton_ancho, boton_alto, spr_boton, 0);
	draw_set_color(c_navy);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	var _x = (boton1X + boton_ancho / 2) * unit_size;
	var _y = (botonY + boton_alto / 2) * unit_size;
	draw_text(_x, _y, "DISPARA!");
	DibujarCuadro(boton2X, botonY, boton_ancho, boton_alto, spr_boton, 1);
	draw_set_color(c_orange);
	_x = (boton2X + boton_ancho / 2) * unit_size;
	_y = (botonY + boton_alto / 2) * unit_size;
	draw_text(_x, _y, "OBJETOS");
}
#endregion
