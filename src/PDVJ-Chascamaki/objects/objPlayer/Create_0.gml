/// @desc Inicialización y variables
event_inherited();

image_speed = 0;
image_index = 10;

isMoving = false;
isTurning = false;
isInteracting = false;
isIdle = true;

turnTimer = 0;
walkTrigger = 10;

faceDir = 0;
walkDir = faceDir;

currentInteractive = 0;
interactiveIndex = 0;

walkSpeed = 1;
arrayWalk = 0;
frameTimer = 0;

walkFrames = [1, 0, 1, 2];
spriteSize = sprite_get_number(sprite_index) / 4;

#region Sistema tienda y economía

global.dinero_jugador = 500;
global.inventario = ds_list_create();

ds_list_add(global.inventario, [2, 3]);
ds_list_add(global.inventario, [4, 1]);

global.can_move = true;

#endregion
