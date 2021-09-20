// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CambiarTurno(){
	if (global.turno == "P1") {
		global.turno = "CPU";
	} else if (global.turno == "CPU") {
		global.turno = "P1";
		global.ronda++;
	}
	global.inicio_turno = true;
	global.timer = global.max_timer;
	global.timer_stop = false;
}