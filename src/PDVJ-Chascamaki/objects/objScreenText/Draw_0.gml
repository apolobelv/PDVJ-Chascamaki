/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self();
//seteo del formato del texto 
draw_set_font(fntCredits);
if (numtext ==0 or numtext== 1){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
}else {
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
}

draw_set_color(col);
draw_text(x,y,text);



