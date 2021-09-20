/// @description Dibujar menú

switch (menuIndex) {
	case 0:
		#region case 0
		var menuAncho = display_get_gui_width() * 0.4;
		var menuScx = menuAncho / sprite_get_width(cajaTexto);
		var menuAlto = display_get_gui_height() * 0.21;
		var menuScy = menuAlto / sprite_get_height(cajaTexto);

		var menuX = (display_get_gui_width() - menuAncho) / 2;
		var menuY = (display_get_gui_height() - menuAlto) / 2;

		draw_sprite_ext(cajaTexto, 0, menuX, menuY, menuScx, menuScy, 0, -1, 1);

		var margen = 16;
		var textoX = display_get_gui_width() / 2;
		var textoY = menuY + margen;
		var espacio_lineas = 32;

		draw_set_halign(fa_center);

		for (var i = 0; i < array_length(opciones); i++) {
			if (i == seleccion) {
				draw_set_color(c_orange);
			} else {
				draw_set_color(c_navy);
			}
			draw_text(textoX, textoY, opciones[i]);
			textoY += espacio_lineas;
		}
		break;
		#endregion
	case 1:
		#region case 1
		var menuAncho = display_get_gui_width() * 0.4;
		var menuScx = menuAncho / sprite_get_width(cajaTexto);
		var menuAlto = display_get_gui_height() * 0.21;
		var menuScy = menuAlto / sprite_get_height(cajaTexto);
		
		var inventarioAncho = display_get_gui_width() * 0.48;
		var inventarioScx = inventarioAncho / sprite_get_width(cajaTexto);
		var inventarioAlto = display_get_gui_height() * 0.75;
		var inventarioScy = inventarioAlto / sprite_get_height(cajaTexto);

		var menuX = (display_get_gui_width() - menuAncho - inventarioAncho - 16) / 2;
		var menuY = (display_get_gui_height() - menuAlto) / 2;
		
		var inventarioX = (display_get_gui_width() - inventarioAncho + menuAncho) / 2;
		var inventarioY = (display_get_gui_height() - inventarioAlto) / 2;

		draw_sprite_ext(cajaTexto, 0, menuX, menuY, menuScx, menuScy, 0, -1, 1);

		var margen = 16;
		var textoX = menuX + menuAncho / 2;
		var textoY = menuY + margen;
		var espacio_lineas = 32;

		draw_set_halign(fa_center);

		for (var i = 0; i < array_length(opciones); i++) {
			if (i == seleccion) {
				draw_set_color(c_orange);
			} else {
				draw_set_color(c_navy);
			}
			draw_text(textoX, textoY, opciones[i]);
			textoY += espacio_lineas;
		}
		
		draw_sprite_ext(cajaTexto, 0, inventarioX, inventarioY, inventarioScx, inventarioScy, 0, -1, 1);
		
		draw_set_halign(fa_left);
		var textoInventarioX = inventarioX + margen
		var textoInventarioY = inventarioY + margen
		
		for (var i = 0; i < ds_list_size(global.inventario); i++) {
			if (i == seleccionInventario) {
				draw_set_color(c_orange);
			} else {
				draw_set_color(c_navy);
			}
			var objetos = global.inventario[| i];
			var nombreObjeto = global.items[objetos[0]][0];
			var cantidad = objetos[1];
			draw_text(textoInventarioX, textoInventarioY, nombreObjeto);
			draw_text(textoInventarioX + 400, textoInventarioY, cantidad);
			textoInventarioY += espacio_lineas;
		}
		break;
		#endregion
	case 2:
		#region case 2
		var anuncioSalirAncho = display_get_gui_width() * 0.4;
		var anuncioSalirScx = anuncioSalirAncho / sprite_get_width(sprTextBox1);
		var anuncioSalirAlto = display_get_gui_height() * 0.4;
		var anuncioSalirScy = anuncioSalirAlto / sprite_get_height(sprTextBox1);
		
		var anuncioSalirX = (display_get_gui_width() - anuncioSalirAncho) / 2; 
		var anuncioSalirY = (display_get_gui_height() - anuncioSalirAlto) / 2;
		
		draw_sprite_ext(sprTextBox1, 0, anuncioSalirX, anuncioSalirY, anuncioSalirScx, anuncioSalirScy, 0, -1, 1);
		
		var margen = 16;
		var textoAnuncioX = anuncioSalirX + anuncioSalirAncho / 2;
		var textoAnuncioY = anuncioSalirY + margen;
		draw_set_halign(fa_center)
		draw_text(textoAnuncioX, textoAnuncioY, "Estas seguro de que quieres salir?");
		textoAnuncioY += 32;
		draw_text(textoAnuncioX, textoAnuncioY, "El progreso no sera guardado.");
		
		
		
		#endregion
		break;
	
}