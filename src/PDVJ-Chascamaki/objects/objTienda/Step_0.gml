/// @description Navegación menú y compra

var key_up = keyboard_check_pressed(vk_up);
var key_down = keyboard_check_pressed(vk_down);
var key_left = keyboard_check_pressed(vk_left);
var key_right = keyboard_check_pressed(vk_right);
var key_confirm = keyboard_check_pressed(vk_enter);
var key_back = keyboard_check_pressed(vk_escape);

var vert_move = key_down - key_up;
var hor_move = key_right - key_left;

switch (current_state) {
	case 0:
		if (key_confirm) {
			current_state = 1;
		} else if (key_back) {
			active = false;
		} else if (vert_move != 0) {
			buying = !buying;
		}
		break;
	case 1:
		if (key_confirm) {
			current_state = 2;
		} else if (key_back) {
			current_state = 0;
		} else if (vert_move != 0) {
			list_select += vert_move;
			if (buying) {
				if (list_select >= array_length(global.items)) {
					list_select = 0;
				} else if (list_select < 0) {
					list_select = array_length(global.items) - 1;
				}
			} else {
				if (list_select >= ds_list_size(global.inventario)) {
					list_select = 0;
				} else if (list_select < 0) {
					list_select = ds_list_size(global.inventario) - 1;
				}
			}
		}
		break;
	case 2:
		if (key_confirm) {
			current_state = 3;
		} else if (key_back) {
			current_state = 1;
		} else if (hor_move != 0 || vert_move != 0) {
			list_select += vert_move;
			if (buying) {
				if (list_select >= array_length(global.items)) {
					list_select = 0;
				} else if (list_select < 0) {
					list_select = array_length(global.items) - 1;
				}
			} else {
				if (list_select >= ds_list_size(global.inventario)) {
					list_select = 0;
				} else if (list_select < 0) {
					list_select = ds_list_size(global.inventario) - 1;
				}
			}
		}
		break;
	case 3:
		break;
}
	
