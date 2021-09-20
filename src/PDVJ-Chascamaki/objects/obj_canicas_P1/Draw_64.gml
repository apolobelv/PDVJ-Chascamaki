/// @description Cuadros de texto
if (status = 1) {
	var confirm_ancho = 10;
	var confirm_alto = 6;
	var confirm_x = (canicas[canica_select].x / unit_size) - 5;
	var confirm_y = (canicas[canica_select].y / unit_size) - 9;
	
	DibujarCuadro(confirm_x, confirm_y, confirm_ancho, confirm_alto, spr_panel, 0);
	
	var text_x = (confirm_x + confirm_ancho / 2) * unit_size;
	var text_y = (confirm_y + 1.5) * unit_size;
	draw_set_halign(fa_center);

	draw_text(text_x, text_y, "Seguro?")
	
	var boton_alto = 2;
	var boton_ancho = 3;
	var boton_x = confirm_x + confirm_ancho / 2 - 0.5 - boton_ancho;
	var boton_y = confirm_y + confirm_alto - 1 - boton_alto;
	
	if (boton_confirm == 0) {
		DibujarCuadro(boton_x, boton_y, boton_ancho, boton_alto, spr_boton, 1);
	} else {
		DibujarCuadro(boton_x, boton_y, boton_ancho, boton_alto, spr_boton, 0);
	}	
	
	text_x = (boton_x + boton_ancho / 2) * unit_size;
	text_y = (boton_y + boton_alto / 2) * unit_size;
	draw_set_valign(fa_middle);
	
	if (boton_confirm == 0) {
		draw_set_color(c_orange);
	} else {
		draw_set_color(c_navy);
	}
	
	draw_text(text_x, text_y, "SI");
	
	boton_x = confirm_x + confirm_ancho / 2 + 0.5;
	boton_y = confirm_y + confirm_alto - 1 - boton_alto;
	
	if (boton_confirm == 1) {
		DibujarCuadro(boton_x, boton_y, boton_ancho, boton_alto, spr_boton, 1);
	} else {
		DibujarCuadro(boton_x, boton_y, boton_ancho, boton_alto, spr_boton, 0);
	}
	
	text_x = (boton_x + boton_ancho / 2) * unit_size;
	text_y = (boton_y + boton_alto / 2) * unit_size;
	draw_set_valign(fa_middle);
	
	if (boton_confirm == 1) {
		draw_set_color(c_orange);
	} else {
		draw_set_color(c_navy);
	}
	
	
	draw_text(text_x, text_y, "NO")
	
}