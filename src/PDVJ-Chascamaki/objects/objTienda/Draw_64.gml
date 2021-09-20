/// @description Interfaz
if (active) {
	
	switch (current_state) {
	case 0:
		#region Cuadro diálogo
		draw_set_halign(fa_left);
		var cuadroAncho = display_get_gui_width() * 0.70;
		var cuadroScx = cuadroAncho / sprite_get_width(textBox);
		var cuadroAlto = display_get_gui_height() * 0.20;
		var cuadroScy = cuadroAlto / sprite_get_height(textBox);
		
		var margen = 16;
		var cuadroX = 16;
		var cuadroY = display_get_gui_height() - cuadroAlto - 16;
		
		draw_sprite_ext(textBox, 0, cuadroX, cuadroY, cuadroScx, cuadroScy, 0, -1, 1);
		draw_set_color(c_navy);
		draw_text(cuadroX + margen, cuadroY + margen, "Bienvenida! Con que podemos ayudarte?");
		#endregion
		#region Switch
		var switchAncho = display_get_gui_width() * 0.25 - 16;
		var switchScx = switchAncho / sprite_get_width(textBox);
		var switchAlto = display_get_gui_height() * 0.20;
		var switchScy = switchAlto / sprite_get_height(textBox);
		
		var margen = 16;
		var switchX = display_get_gui_width() * 0.75;
		var switchY = display_get_gui_height() - cuadroAlto - 16;
		
		var flechaAncho = 16;
		var flechaScx = flechaAncho / sprite_get_width(sprFlecha);
		var flechaAlto = 16;
		var flechaScy = flechaAlto / sprite_get_height(sprFlecha);
		
		draw_sprite_ext(textBox, 0, switchX, switchY, switchScx, switchScy, 0, -1, 1);
		
		if (buying) {
			draw_set_color(c_orange);
			draw_sprite_ext(sprFlecha, 0, switchX + margen + 2, switchY + margen + 2, flechaScx, flechaScy, 0, c_orange, 1);
		} else {
			draw_set_color(c_navy);
		}
		draw_text(switchX + margen + 32, switchY + margen, "Comprar");
		if (!buying) {
			draw_set_color(c_orange);
			draw_sprite_ext(sprFlecha, 0, switchX + margen + 2, switchY + margen + 32 + 2, flechaScx, flechaScy, 0, c_orange, 1);
		} else {
			draw_set_color(c_navy);
		}
		draw_text(switchX + margen + 32, switchY + margen + 32, "Vender");
		#endregion
		break;
	case 1:
		#region Caja monedas jugador
		var cajaMonedasAncho = (display_get_gui_width() - 32) * 0.25;
		var cajaMonedasAlto = (display_get_gui_height() - 32) * 0.075;
		var cajaMonedasXScale = cajaMonedasAncho / sprite_get_width(sprTextBox1);
		var cajaMonedasYScale = cajaMonedasAlto / sprite_get_height(sprTextBox1);
	
		draw_sprite_ext(sprTextBox1, 0, 16, 16, cajaMonedasXScale, cajaMonedasYScale, 0, -1, 1);
	
		draw_set_halign(fa_left);
		draw_set_color(c_navy);
	
		draw_text(32, 32, "ROSA: $" + string(global.dinero_jugador));
	
		#endregion
		#region Lista de objetos

		// Caja
		var listaItemsAncho = (display_get_gui_width() - 32) * 0.55;
		var listaItemsAlto = (display_get_gui_height() - 32) * 0.70;
		var listaItemsXScale = listaItemsAncho / sprite_get_width(sprTextBox1);
		var listaItemsYScale = listaItemsAlto / sprite_get_height(sprTextBox1);
	
		draw_sprite_ext(sprTextBox1, 0, display_get_gui_width() * 0.45, 
		16, listaItemsXScale, listaItemsYScale, 0, -1, 1);
	
		// Flecha y texto
		var xArrow = display_get_gui_width() * 0.45 + 20;
		var xText = xArrow + 32;
		var yArrow = 32 + 16 + 3;
		var yText = 32 + 16;
		var flechaWidth = 24;
		var flechaXScale = flechaWidth / sprite_get_width(sprFlecha);
		var flechaHeight = 16;
		var flechaYScale = flechaHeight / sprite_get_height(sprFlecha);
		draw_set_valign(fa_top);
	
		if (buying) {
			for (var i = 0; i < array_length(global.items); i++) {
				if (i == list_select) {
					draw_sprite_ext(sprFlecha, 0, xArrow, yArrow, flechaXScale, flechaYScale, 0, c_orange, 1);
					draw_set_color(c_orange);
				} else {
					draw_set_color(c_navy);
				}
				draw_text(xText, yText, global.items[i][0]);
				draw_text(xText + 400, yText, global.items[i][1]);
				yText += 32;
				yArrow += 32;
			}
		} else {
			for (var i = 0; i < ds_list_size(global.inventario); i++) {
				if (i == list_select) {
					draw_sprite_ext(sprFlecha, 0, xArrow, yArrow, flechaXScale, flechaYScale, 0, c_orange, 1);
					draw_set_color(c_orange);
				} else {
					draw_set_color(c_navy);
				}
				var objeto = global.inventario[| i];
				var nombre = global.items[objeto[i]][0];
				var precio = int64(global.items[objeto[i]][1] / 3);
				draw_text(xText, yText, nombre);
				draw_text(xText + 400, yText, precio);
				yText += 32;
				yArrow += 32;
			}
		}
	
		#endregion
		#region Caja descripción

		// Caja
		var cajaDescripcionAncho = (display_get_gui_width() - 32) * 0.55;
		var cajaDescripcionAlto = (display_get_gui_height() - 32) * 0.25;
		var cajaDescripcionXScale = cajaDescripcionAncho / sprite_get_width(sprTextBox1);
		var cajaDescripcionYScale = cajaDescripcionAlto / sprite_get_height(sprTextBox1);
	
		draw_sprite_ext(sprTextBox1, 0, display_get_gui_width() * 0.45, 
		display_get_gui_height() * 0.7, cajaDescripcionXScale, cajaDescripcionYScale, 0, -1, 1);
		
		draw_set_color(c_navy);
		
		if (buying) {
			draw_sprite_ext(sprItem, list_select, 
			display_get_gui_width() * 0.45 + 16, display_get_gui_height() * 0.72 + 16,
			3, 3, 0, -1, 1);
			draw_text_ext(display_get_gui_width() * 0.59, display_get_gui_height() * 0.75,
			global.items[list_select][2], 32, 
			cajaDescripcionAncho - 170);
		} else {
			var objeto = global.inventario[| list_select];
			var _id = objeto[0];
			draw_sprite_ext(sprItem, _id, 
			display_get_gui_width() * 0.45 + 16, display_get_gui_height() * 0.72 + 16,
			3, 3, 0, -1, 1);
			draw_text_ext(display_get_gui_width() * 0.59, display_get_gui_height() * 0.75,
			global.items[_id][2], 32, 
			cajaDescripcionAncho - 170);
		}		
		
		#endregion
		break;
	case 2:
		#region Caja monedas jugador
		var cajaMonedasAncho = (display_get_gui_width() - 32) * 0.25;
		var cajaMonedasAlto = (display_get_gui_height() - 32) * 0.075;
		var cajaMonedasXScale = cajaMonedasAncho / sprite_get_width(sprTextBox1);
		var cajaMonedasYScale = cajaMonedasAlto / sprite_get_height(sprTextBox1);
	
		draw_sprite_ext(sprTextBox1, 0, 16, 16, cajaMonedasXScale, cajaMonedasYScale, 0, -1, 1);
	
		draw_set_halign(fa_left);
		draw_set_color(c_navy);
	
		draw_text(32, 32, "ROSA: $" + string(global.dinero_jugador));
	
		#endregion
		#region Lista de objetos

		// Caja
		var listaItemsAncho = (display_get_gui_width() - 32) * 0.55;
		var listaItemsAlto = (display_get_gui_height() - 32) * 0.70;
		var listaItemsXScale = listaItemsAncho / sprite_get_width(sprTextBox1);
		var listaItemsYScale = listaItemsAlto / sprite_get_height(sprTextBox1);
	
		draw_sprite_ext(sprTextBox1, 0, display_get_gui_width() * 0.45, 
		16, listaItemsXScale, listaItemsYScale, 0, -1, 1);
	
		// Flecha y texto
		var xArrow = display_get_gui_width() * 0.45 + 20;
		var xText = xArrow + 32;
		var yArrow = 32 + 16 + 3;
		var yText = 32 + 16;
		var flechaWidth = 24;
		var flechaXScale = flechaWidth / sprite_get_width(sprFlecha);
		var flechaHeight = 16;
		var flechaYScale = flechaHeight / sprite_get_height(sprFlecha);
		draw_set_valign(fa_top);
	
		if (buying) {
			for (var i = 0; i < array_length(global.items); i++) {
				if (i == list_select) {
					draw_sprite_ext(sprFlecha, 0, xArrow, yArrow, flechaXScale, flechaYScale, 0, c_orange, 1);
					draw_set_color(c_orange);
				} else {
					draw_set_color(c_navy);
				}
				draw_text(xText, yText, global.items[i][0]);
				draw_text(xText + 400, yText, global.items[i][1]);
				yText += 32;
				yArrow += 32;
			}
		} else {
			for (var i = 0; i < ds_list_size(global.inventario); i++) {
				if (i == list_select) {
					draw_sprite_ext(sprFlecha, 0, xArrow, yArrow, flechaXScale, flechaYScale, 0, c_orange, 1);
					draw_set_color(c_orange);
				} else {
					draw_set_color(c_navy);
				}
				var objeto = global.inventario[| i];
				var nombre = global.items[objeto[i]][0];
				var precio = int64(global.items[objeto[i]][1] / 3);
				draw_text(xText, yText, nombre);
				draw_text(xText + 400, yText, precio);
				yText += 32;
				yArrow += 32;
			}
		}
	
		#endregion
		#region Caja descripción

		// Caja
		var cajaDescripcionAncho = (display_get_gui_width() - 32) * 0.55;
		var cajaDescripcionAlto = (display_get_gui_height() - 32) * 0.25;
		var cajaDescripcionXScale = cajaDescripcionAncho / sprite_get_width(sprTextBox1);
		var cajaDescripcionYScale = cajaDescripcionAlto / sprite_get_height(sprTextBox1);
	
		draw_sprite_ext(sprTextBox1, 0, display_get_gui_width() * 0.45, 
		display_get_gui_height() * 0.7, cajaDescripcionXScale, cajaDescripcionYScale, 0, -1, 1);
		
		draw_set_color(c_navy);
		
		if (buying) {
			draw_sprite_ext(sprItem, list_select, 
			display_get_gui_width() * 0.45 + 16, display_get_gui_height() * 0.72 + 16,
			3, 3, 0, -1, 1);
			draw_text_ext(display_get_gui_width() * 0.59, display_get_gui_height() * 0.75,
			global.items[list_select][2], 32, 
			cajaDescripcionAncho - 170);
		} else {
			var objeto = global.inventario[| list_select];
			var _id = objeto[0];
			draw_sprite_ext(sprItem, _id, 
			display_get_gui_width() * 0.45 + 16, display_get_gui_height() * 0.72 + 16,
			3, 3, 0, -1, 1);
			draw_text_ext(display_get_gui_width() * 0.59, display_get_gui_height() * 0.75,
			global.items[_id][2], 32, 
			cajaDescripcionAncho - 170);
		}		
		
		#endregion
		#region Cantidad y confirmación
		var confirmacionAncho = display_get_gui_width() * 0.4;
		var confirmacionScx = confirmacionAncho / sprite_get_width(textBox);
		var confirmacionAlto = display_get_gui_height() * 0.4;
		var confirmacionScy = confirmacionAlto / sprite_get_height(textBox);
		
		var confirmacionX = (display_get_gui_width() - confirmacionAncho) / 2; 
		var confirmacionY = (display_get_gui_height() - confirmacionAlto) / 2;
		
		draw_sprite_ext(sprTextBox1, 0, confirmacionX, confirmacionY, confirmacionScx, confirmacionScy, 0, -1, 1);
		
		var margen = 16;
		var textoConfX = confirmacionX +confirmacionAncho / 2;
		var textoConfY = confirmacionY + margen;
		draw_set_halign(fa_center)
		draw_text(textoConfX, textoConfY, "Estas comprando/vendiendo:");
		textoConfY += 32;
		draw_text(textoConfX, textoConfY, "Selecciona la cantidad");
		#endregion
		break;
	case 3:
		break;
	}
}