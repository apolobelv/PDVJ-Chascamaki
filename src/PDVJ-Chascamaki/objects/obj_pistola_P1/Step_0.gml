/// @description Controles según el estado

var clic_izq = mouse_check_button_pressed(mb_left);
var clic_izq_hold = mouse_check_button(mb_left);
var clic_der = mouse_check_button_pressed(mb_right);

var key_back = keyboard_check_pressed(vk_escape);
	
switch(status) {
	case 0:
		if (clic_der || key_back) {
			instance_create_layer(0, 0, "HUD", obj_control_P1);
			instance_destroy();
		} else if (clic_izq) {
			status++;			
		}
		angulo = degtorad(
		point_direction(global.x_medio, global.y_medio, global.x_medio + 350, mouse_y)
		);
		x = global.x_medio - (global.radio_arena * (cos(angulo)));
		y = global.y_medio - (global.radio_arena * (sin(angulo)));
		direction = point_direction(x, y, global.x_medio, global.y_medio);
		break;
	case 1:
		if (clic_der || key_back) {
			status--;
		} else if (clic_izq) {
			status++;			
		}
		direction = point_direction(x, y, mouse_x, mouse_y);
		break;
	case 2:
		var velocidad_disparo = velocidad_min + (velocidad_max - velocidad_min);
		var canica = instance_create_layer(x, y, "Instances", obj_canica);
		canica.porcentaje_vida = 100;
		canica.bala = true;
		canica.canica_equipo = 0;
		canica.direction = direction;
		canica.speed = velocidad_disparo;
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