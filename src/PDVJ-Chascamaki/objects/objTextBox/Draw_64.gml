/// @description Dibujar la caja de texto
/// @description Dibujar la caja de texto
#region Caja

var caja_x = 16;

var resolution_width = 982;
var caja_width = resolution_width - caja_x - 16;
var caja_horscale = caja_width / sprite_get_width(sprTextBox);

var resolution_height = 720;
var caja_height = resolution_height * 0.25;
var caja_verscale = caja_height / sprite_get_height(sprTextBox);

var caja_y = resolution_height - caja_height - 16;

draw_sprite_ext(sprTextBox, 0, caja_x, caja_y, caja_horscale, caja_verscale, 0, -1, 1);

#endregion

#region Texto

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_font(fntFont1);
draw_text_ext(caja_x + 32, caja_y + 48, _text, 40, caja_width - 48*2);

#endregion