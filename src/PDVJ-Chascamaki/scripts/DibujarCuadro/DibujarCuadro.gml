// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DibujarCuadro(x0, y0, ancho, alto, sprite, subimagen){
	var sprite_ancho = (ancho * unit_size) / sprite_get_width(sprite);
	var sprite_alto = (alto * unit_size) / sprite_get_height(sprite);

	draw_sprite_ext(sprite, subimagen, x0*unit_size, y0*unit_size, sprite_ancho, sprite_alto, 0, -1, 1);
}