/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self(); 


//x=    camera_get_view_width(cam)/2;
//y=    camera_get_view_height(cam)/2;
// coniguracion de la posision 
x= objCamera.x;
y= objCamera.y;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntTitles);
draw_set_color(c_white);
draw_text(x,y,text);




