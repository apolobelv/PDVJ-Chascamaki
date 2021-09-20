// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DestruirP1(){
	if (instance_exists(obj_canicas_P1)) {
		instance_destroy(obj_canicas_P1);
	}
	if (instance_exists(obj_control_P1)) {
		instance_destroy(obj_control_P1);
	}
	if (instance_exists(obj_inventario_batalla)) {
		instance_destroy(obj_inventario_batalla);
	}
}