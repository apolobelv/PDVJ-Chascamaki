/// @description Rejoj y turnos

var cuadro_ancho;
var cuadro_alto;
var cuadro_x;
var cuadro_y;

var text_x;
var text_y;

#region Turno
cuadro_ancho = 10;
cuadro_alto = 3;
cuadro_x = pantalla_ancho / 2 - cuadro_ancho - 0.5;
cuadro_y = 1;

DibujarCuadro(cuadro_x, cuadro_y, cuadro_ancho, cuadro_alto, spr_panel, 0);

text_x = cuadro_x + cuadro_ancho / 2;
text_y = cuadro_y + cuadro_alto / 2;
draw_set_color(c_navy);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(text_x*unit_size, text_y*unit_size, "Round: " + string(global.ronda));
#endregion

#region Tiempo
cuadro_x = pantalla_ancho / 2 + 0.5;

DibujarCuadro(cuadro_x, cuadro_y, cuadro_ancho, cuadro_alto, spr_panel, 0);

text_x = cuadro_x + cuadro_ancho / 2;
text_y = cuadro_y + cuadro_alto / 2;

draw_text(text_x*unit_size, text_y*unit_size, "Tiempo: " + string(floor(global.timer)));
#endregion

#region Corazones aliado
var corazonX = (imagenX + imagen_ancho + 1) * unit_size;
var corazonY = ((imagenY + imagen_alto / 2) + 1) * unit_size;
DibujarCorazones(corazonX, corazonY, 1, global.vidas_P1, 0);
#endregion

#region Retrato aliado
DibujarCuadro(imagenX, imagenY, imagen_ancho, imagen_alto, spr_panel, 0);
#endregion

#region Corazones enemigo
corazonX = (pantalla_ancho - imagen_ancho - 1 - 1) * unit_size;
corazonY = ((imagenY + imagen_alto / 2) + 1) * unit_size;
DibujarCorazones(corazonX, corazonY, 1, global.vidas_CPU, 1);
#endregion

#region Retrato enemigo
DibujarCuadro(pantalla_ancho - imagen_ancho - 1, imagenY, imagen_ancho, imagen_alto, spr_panel, 0);
#endregion