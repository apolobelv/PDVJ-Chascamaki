/// @description Variables

angulo = 0;
status = 0;

x = room_width / 2 + (global.radio_arena * (cos(angulo)));
y = room_height / 2 - (global.radio_arena * (sin(angulo)));
direction = point_direction(x, y, global.x_medio, global.y_medio);

velocidad_min = 6;
velocidad_max = 20;

pistola_cpu_timer1 = irandom_range(120, 240);
pistola_cpu_timer2 = irandom_range(120, 240);
velocidad_disparo_cpu = velocidad_max;

offset_y = global.y_medio;
direccion[0] = 1;
direccion[1] = -1;
offset_dir = direccion[irandom(1)];
velocidad_y= 10;

tilt = 0;
velocidad_tilt = 1;