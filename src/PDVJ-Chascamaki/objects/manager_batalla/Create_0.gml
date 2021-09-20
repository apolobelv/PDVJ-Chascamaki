/// @description Variables
randomize();

global.x_medio = room_width / 2;
global.y_medio = room_height / 2;
global.radio_arena = 350;
global.radio_spawn = global.radio_arena * 0.4;

global.max_comms_timer = 2 * 60;
global.comms_timer = global.max_comms_timer;
global.turno = "P1"
global.inicio_turno = true;

global.ronda = 0;
global.max_timer = 20 + 1; // + 1 para que el FLOOR lo deje en el tiempo correcto.
global.timer = global.max_timer;
global.timer_stop = false;

ganador = noone;
max_rondas = 10;

boton_ancho = 9;
boton_alto = 3;
boton1X = 1;
boton2X = boton1X + boton_ancho + 1;
botonY = pantalla_alto - (boton_alto + 1);
boton_select = 0;

imagen_ancho = 5;
imagen_alto = 6;
imagenX = 1;
imagenY = botonY - 1 - imagen_alto;

global.maximo_vidas = 3;
global.vidas_P1 = 3;
global.vidas_CPU = 3;

// Inicio juego
for (var i = 0; i < 6; i++) {
	var angle = irandom(359);
	var distance = irandom(global.radio_spawn);
	var _x = global.x_medio - (distance * cos(angle));
	var _y = global.y_medio + (distance * sin(angle));
	var canica = instance_create_layer(_x, _y, "Instances", obj_canica);
	if (i < 3) {
		canica.canica_equipo = 0;
	} else {
		canica.canica_equipo = 1;
	}
}

global.items = ds_list_create();

ds_list_add(global.items, ["Pocima de vida", 2, 0]);
ds_list_add(global.items, ["Incremento", 1, 1]);
ds_list_add(global.items, ["Toque toxico", 1, 2]);

