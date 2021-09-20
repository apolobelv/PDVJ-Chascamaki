/// @description Navegación

// Inputs
var key_left = keyboard_check_pressed(vk_left);
var key_right = keyboard_check_pressed(vk_right);
var key_confirm = keyboard_check_pressed(vk_enter);

if (key_confirm) {
	switch (boton_select) {
		case 0:
			if (!instance_exists(obj_pistola_P1)) {
				instance_create_layer(0, 0, "Instances", obj_pistola_P1);
			}
			instance_destroy();
			break;
		case 1:
			if (!instance_exists(obj_inventario_batalla)) {
				instance_create_layer(0, 0, "HUD", obj_inventario_batalla);
			}
			break;
	}
} else if (!instance_exists(obj_inventario_batalla) && key_right-key_left != 0) {
	switch (boton_select) {
		case 0:
			boton_select = 1;
			break;
		case 1:
			boton_select = 0;
			break;
	}
}