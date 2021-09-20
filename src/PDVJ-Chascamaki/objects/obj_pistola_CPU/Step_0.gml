/// @description Insert description here
// You can write your code in this editor
switch (status) {
	case 0:
		angulo = degtorad(
		point_direction(global.x_medio, global.y_medio, global.x_medio + 350, offset_y)
		);
		x = room_width / 2 + (global.radio_arena * (cos(angulo)));
		y = room_height / 2 - (global.radio_arena * (sin(angulo)));
		direction = point_direction(x, y, global.x_medio, global.y_medio);
		offset_y += offset_dir * velocidad_y;
		if (offset_y > room_height) {
			offset_y = room_height
			offset_dir = -offset_dir
		} else if (offset_y < 0) {
			offset_y = 0;
			offset_dir = -offset_dir;
		}
		pistola_cpu_timer1--
		if (pistola_cpu_timer1 <= 0) {
			status = 1;
		}
		break;
	case 1:
		direction = 
		point_direction(x, y, global.x_medio, global.y_medio) + tilt;
		tilt += offset_dir * velocidad_tilt;
		if (tilt > 30) {
			tilt = 30
			offset_dir = -offset_dir
		} else if (tilt < -30) {
			tilt = -30;
			offset_dir = -offset_dir;
		}
		pistola_cpu_timer2--
		if (pistola_cpu_timer2 <= 0) {
			status = 2;
		}
		break;
	case 2:
		var canica = instance_create_layer(x, y, "Instances", obj_canica);
		canica.porcentaje_vida = 100;
		canica.bala = true;
		canica.canica_equipo = 1;
		canica.direction = direction;
		canica.speed = velocidad_disparo_cpu;
		status = 3;
		break;
	case 3:
		global.timer_stop = true;
		global.comms_timer--
		if (global.comms_timer <= 0) {
			global.comms_timer = global.max_comms_timer;
			CambiarTurno();
			instance_destroy();
		}
		break;
}