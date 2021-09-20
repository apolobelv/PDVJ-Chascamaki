/// @description Manejador turnos y etapas

// Disminución del tiempo
if (global.timer > 0 && !global.timer_stop) {
	global.timer -= 1/frame_rate;
} else if (global.timer <= 0) {
	global.timer = 0;
}

// Cambio de turno al quedarse sin tiempo
if (global.timer == 0) {
	if (global.ronda <= max_rondas) {
		CambiarTurno();
		global.timer = global.max_timer;
	}
}


// Manejo turnos
switch (global.turno) {
	case "P1":
		if (global.inicio_turno) {
			instance_create_layer(0, 0, "HUD", obj_control_P1);
			global.inicio_turno = false;
		}
		break;
	case "CPU":
		if (global.inicio_turno) {
			DestruirP1();
			instance_create_layer(0, 0, "Instances", obj_pistola_CPU);
			global.inicio_turno = false;
		}
		break;
}

// Condición W/L
if (global.vidas_P1 == 0) {
	room_goto(rm_lose);
} else if (global.vidas_CPU == 0) {
	room_goto(rm_win);
} else if (global.ronda > max_rondas) {
	if (global.vidas_P1 > global.vidas_CPU) {
		room_goto(rm_win);
	} else if (global.vidas_P1 == global.vidas_CPU) {
		room_goto(rm_tie);
	} else {
		room_goto(rm_lose);
	}
}
		
		