/// @description Navegación
var key_confirm = keyboard_check_pressed(vk_enter);
var key_down = keyboard_check_pressed(vk_down);
var key_up = keyboard_check_pressed(vk_up);
var key_back = keyboard_check_pressed(vk_escape);

var ver_move = key_down - key_up;

if (key_back) {
	instance_destroy();
} else if (key_confirm) {
	if (ds_list_size(global.items) != 0) {
		var select_canicas = instance_create_layer(0, 0, "HUD", obj_canicas_P1);
		select_canicas.objeto = global.items[| object_select][2]; 
		select_canicas.object_select = object_select;
	}
} else if (ver_move != 0) {
	object_select += ver_move;
	if (object_select >= ds_list_size(global.items)) {
		object_select = 0;
	} else if (object_select < 0) {
		object_select = ds_list_size(global.items) - 1;
	}
}