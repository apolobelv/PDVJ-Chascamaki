/// @description Insert description here
var key_up = keyboard_check_pressed(vk_up);
var key_down = keyboard_check_pressed(vk_down);
var key_left = keyboard_check_pressed(vk_left);
var key_right = keyboard_check_pressed(vk_right);
var key_confirm = keyboard_check_pressed(vk_enter);
var key_back = keyboard_check_pressed(vk_escape);

var vert_move = key_down - key_up;
var hor_move = key_right - key_left;

switch (menuIndex) {
	case 0:
	#region case 0
		if (key_confirm) {
			switch (seleccion) {
				case 0: 
					menuIndex = 1;
					break;
				case 2:
					menuIndex = 2;
					break;
				case 3:
					global.can_move = true;
					instance_destroy();
					break;
			}	
		} else if (key_back) {
			global.can_move = true;
			instance_destroy();
		} else if (vert_move != 0) {
			seleccion += vert_move;
			if (seleccion >= array_length(opciones)) {
				seleccion = 0;
			} else if (seleccion < 0) {
				seleccion = array_length(opciones) - 1;
			}
		}
		break;
		#endregion
	case 1:
	#region case 1
		if (key_confirm) {
			switch (seleccion) {
				case 0: 
					menuIndex = 1;
					break;
			}	
		} else if (key_back) {
			menuIndex = 0;
		} else if (vert_move != 0) {
			seleccionInventario += vert_move;
			if (seleccionInventario >= ds_list_size(global.inventario)) {
				seleccionInventario = 0;
			} else if (seleccionInventario < 0) {
				seleccionInventario = ds_list_size(global.inventario) - 1;
			}
		}
		break;
		#endregion
	case 2:
		if (key_confirm) {
			if (exitGame) {
				game_end();
			} else {
				menuIndex = 0;
			}
		} else if (key_back) {
			menuIndex = 0;
		} else if (hor_move != 0) {
			exitGame = !exitGame;
		}
		break;
}
