/// @description Navegación y nuevas canicas
var index = 0;
for (var i = 0; i < instance_number(obj_canica); ++i) {
	if (instance_find(obj_canica, i).canica_equipo == 0) {
		canicas[index] = instance_find(obj_canica, i);
		index++;
	}
}

var key_right = keyboard_check_pressed(vk_right);
var key_left = keyboard_check_pressed(vk_left);
var key_confirm = keyboard_check_pressed(vk_enter);
var key_back = keyboard_check_pressed(vk_escape);

var hor_move = key_right - key_left;

switch (status) {
	case 0:
		if (key_back) {
			instance_create_layer(0, 0, "HUD", obj_inventario_batalla);
			var c = instance_create_layer(0, 0, "HUD", obj_control_P1);
			c.boton_select = 1;
			instance_destroy();
		} else if (key_confirm) {
			status = 1;
		} else if (hor_move != 0) {
			canica_select += hor_move;
			if (canica_select >= array_length(canicas)) {
				canica_select = 0;
			} else if (canica_select < 0) {
				canica_select = array_length(canicas) - 1;
			}
		}
		break;
	case 1:
		if (key_back) {
			status = 0;
		} else if (key_confirm) {
			if (boton_confirm == 0) {
				UsarItem(objeto, canica_select);
				global.items[| object_select][1] --;
				if (global.items[| object_select][1] == 0) {
					ds_list_delete(global.items, object_select);
				}
				status = 2;
			} else if (boton_confirm == 1) {
				status = 0;
			}
		} else if (hor_move != 0) {
			if (boton_confirm == 0) {
				boton_confirm = 1;
			} else if (boton_confirm == 1) {
				boton_confirm = 0;
			}
		}
		break;
	case 2:
		global.timer_stop = true;
		global.comms_timer--
		if (global.comms_timer <= 0) {
			global.comms_timer = global.max_comms_timer;
			CambiarTurno();
			instance_destroy();
		}
		break;
}

//#region Detector de movimiento
//for (var i = 0; i < array_length(canicas); i++) {
//	if (canicas[i].speed != 0) {
//		global.movement = true;
//		break;
//	}
//	global.movement = false;
//}
//#endregion