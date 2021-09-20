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

global.can_move = true;

walkSpeed = 1;
arrayWalk = 0;
frameTimer = 0;

walkFrames = [1, 0, 1, 2];
spriteSize = sprite_get_number(sprite_index) / 4;

//Mapa de colisiones
