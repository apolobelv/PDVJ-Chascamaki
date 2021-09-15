/// @desc Actualización constante

if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
	
}
// Update position
x += (xTo - x);
y += (yTo - y);

// Keep camera centered inside room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);
