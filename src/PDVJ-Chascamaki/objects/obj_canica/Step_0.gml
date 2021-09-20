/// @description Insert description here
// You can write your code in this editor
#region Colisiones
	otherId = instance_place(x, y, obj_canica);
	if (otherId != noone && otherId.canica_viva && canica_viva) {
		var midpoint_x = (x + otherId.x) / 2;
		var midpoint_y = (y + otherId.y) / 2;
		otherId.direction = point_direction(midpoint_x, midpoint_y, otherId.x, otherId.y)
		otherId.speed = 6; //20 es muy rapido
		// Este método de dirección no es realista.
		direction = point_direction(midpoint_x, midpoint_y, x, y);
		otherId.porcentaje_vida -= 20;
	}
#endregion

var distancia_centro = distance_to_point(global.x_medio, global.y_medio);

if (!bala && (porcentaje_vida < 0 || distancia_centro > (global.radio_arena - 16))) {
	porcentaje_vida = 0;
	canica_viva = false;
	instance_destroy();
}

#region Deceleración
if (speed > 0) {
	speed -= deceleration;
}

if (speed <= 0) {
	if (bala) {
		instance_destroy()
	} else {
		speed = 0;
	}
}
#endregion