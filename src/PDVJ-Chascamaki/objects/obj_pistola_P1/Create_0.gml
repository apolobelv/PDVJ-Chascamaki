/// @description Variables

angulo = 0;
status = 0;

x = room_width / 2 - (global.radio_arena * (cos(angulo)));
y = room_height / 2 - (global.radio_arena * (sin(angulo)));
direction = point_direction(x, y, global.x_medio, global.y_medio);

velocidad_min = 6;
velocidad_max = 20;