/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self();
//seteo del formato del texto 
draw_set_font(fntTitles);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
x = objCamera.x;
y = objCamera.y; 
draw_text(x,y,text);