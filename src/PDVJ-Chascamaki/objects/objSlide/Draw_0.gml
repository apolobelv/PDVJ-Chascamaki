/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_sprite(sprite_index,amount_current,x,y);

var knob_amount = amount_current / amount_max;
var knob_position_x = x+ (sprite_width*knob_amount);

draw_sprite(spr_Knob,is_being_dragged, knob_position_x,y);