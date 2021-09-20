/// @description Cambio vidas
global.vidas_P1 = 0;
global.vidas_CPU = 0;

for (var i = 0; i < instance_number(obj_canica); ++i) {
	if (!instance_find(obj_canica, i).bala) {
		if (instance_find(obj_canica, i).canica_equipo == 0) {
			global.vidas_P1++;
		} else {
			global.vidas_CPU++;
		}
	}
}