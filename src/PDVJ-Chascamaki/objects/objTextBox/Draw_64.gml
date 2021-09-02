/// @description Dibujar la caja de texto

draw_sprite(sprTextBox, 0, xOrigin, yOrigin);

draw_set_font(fntFont1);
draw_set_color(c_black);

textPart = string_copy(thisText, 1, textProgress);
draw_text_ext(xOrigin + 8, yOrigin + 6, thisText, stringHeight, boxWidth - 16);