/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self();

//seteo del formato del texto 
draw_set_font(fntSlotSave);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
textNameGame=  string( "Juego Nuevo ") +string(numSlot); 
draw_text(x,y,textNameGame);
