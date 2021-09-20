/// @description Variables
instance_destroy(obj_inventario_batalla);
instance_destroy(obj_control_P1);
var index = 0;
for (var i = 0; i < instance_number(obj_canica); ++i) {
	if (instance_find(obj_canica, i).canica_equipo == 0) {
		canicas[index] = instance_find(obj_canica, i);
		index++;
	}
}

boton_confirm = 0;
canica_select = 0;
status = 0;
objeto = 0;
object_select = 0;