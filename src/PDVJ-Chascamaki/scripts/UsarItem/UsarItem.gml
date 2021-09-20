// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UsarItem(objeto, canica_select) {
	canicas[canica_select].itemized = true;
	switch (objeto) {
		case 0:
			if (canicas[canica_select].porcentaje_vida < 80) {
				canicas[canica_select].porcentaje_vida += 20;
			} else {
				canicas[canica_select].porcentaje_vida = 100;
			}
			break;
		case 1:
			canicas[canica_select].image_xscale = 1.5;
			canicas[canica_select].image_yscale = 1.5;
			break;
		case 2:
			canicas[canica_select].image_index = 2;
			break;
	}

}