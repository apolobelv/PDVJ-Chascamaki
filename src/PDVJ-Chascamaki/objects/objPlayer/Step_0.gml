/// @desc Actualización constante
tilemap = layer_tilemap_get_id("Colliders");

// 1. Vamos a recoger el input.
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));;
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));;
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));;
keyActivate = keyboard_check_pressed(vk_space);
keyBack = keyboard_check_pressed(vk_shift);

if (isIdle || isInteracting) { // Si está quieto o interactuando
	// El input de acción tiene precedencia sobre el input direccional
	if (keyActivate) {
			audio_play_sound(sndText,10,false);
			switch (faceDir) {
				case 0: 
					currentInteractive = instance_place(x + TILE_SIZE/2, y, parInteractive); 
					if (currentInteractive > 10 && currentInteractive.isNPC) { currentInteractive.faceDir = 2; }
					break;
				case 1: 
					currentInteractive = instance_place(x, y - TILE_SIZE/2, parInteractive); 
					if (currentInteractive > 10 && currentInteractive.isNPC) { currentInteractive.faceDir = 3; }
					break;
				case 2: 
					currentInteractive = instance_place(x - TILE_SIZE/2, y, parInteractive);
					if (currentInteractive > 10 && currentInteractive.isNPC) { currentInteractive.faceDir = 0; }
					break;
				case 3: 
					currentInteractive = instance_place(x, y + TILE_SIZE/2, parInteractive);
					if (currentInteractive > 10 && currentInteractive.isNPC) { currentInteractive.faceDir = 1; }
					break;
			}
		
		
		if (currentInteractive > 10) {
			isInteracting = true;
			isIdle = false;
			if (interactiveIndex < array_length(currentInteractive.myText)) {
				if (instance_exists(objTextBox)) {
					instance_destroy(objTextBox)
				}
				interactionTextBox = instance_create_layer(0, 0, "Text", objTextBox);
				interactionTextBox._text = currentInteractive.myText[interactiveIndex];
				interactiveIndex++;
			} else {
				instance_destroy(objTextBox);
				currentInteractive = 0;
				interactiveIndex = 0;
				isInteracting = false;
				isIdle = true;
			}
		}
	} else if (isIdle) {
		// Verificar la dirección en la que queremos caminar (y vemos que solo una dirección ingrese).	
		
		hMove = keyRight - keyLeft;
		vMove = keyDown - keyUp;
		if (hMove <> 0) {
			walkDir = 1 - hMove;
			vMove = 0;
		} else if (vMove <> 0) {
			walkDir = 2 + vMove;
		}
	
		// Realizar acción de acuerdo a la dirección
		if (faceDir != walkDir) { // Si estaba viendo en una dirección diferente...
			isTurning = true;
			isIdle = false;
			
	
		} else {
			
			// Antes de movernos, es bueno averiguar si frente a nosotros hay una puerta
			doorId = instance_place(x + hMove * TILE_SIZE, y + vMove * TILE_SIZE, objDoor);
			if (doorId < 5000) {
				// Código para caminar hacia el bloque del frente si no hay nada
				xFree = tilemap_get_at_pixel(tilemap, x + (hMove * TILE_SIZE), y) & tile_index_mask;
				yFree = tilemap_get_at_pixel(tilemap, x, y + (vMove * TILE_SIZE)) & tile_index_mask;
				xFreeObjs = place_meeting(x + (hMove * TILE_SIZE / 2), y, parInteractive);
				yFreeObjs = place_meeting(x, y + (vMove * TILE_SIZE / 2), parInteractive);
				if (hMove != 0) {
					if (xFree == 0 && !xFreeObjs) {
						walkSpeed = 1;
					} else {
						walkSpeed = 0;
					}
				} else if (vMove != 0) {
					if (yFree == 0 && !yFreeObjs) {
						walkSpeed = 1;
					} else {
						walkSpeed = 0;
					}
				}
				isMoving = true;
				isIdle = false;
			} else {
				room_goto(doorId.targetRoom);
				audio_play_sound(sndTpRoom,10,false);
				objPlayer.x = doorId.xSpawn;
				objPlayer.y = doorId.ySpawn;
				objPlayer.faceDir = doorId.doorFaceDir;
			}
		}
	}
}

if (isTurning) {
	turnTimer += 1;
	faceDir = walkDir;
	if (turnTimer < (walkTrigger / 2)) {
		image_index = walkDir * spriteSize + walkFrames[1];
	} else {
		image_index = walkDir * spriteSize + walkFrames[0];
	}
	if (turnTimer >= walkTrigger) {
		isTurning = false;
		isIdle = true;
		turnTimer = 0;
	}	
}
		
if (isMoving) { 

	x += walkSpeed * hMove;	
	y += walkSpeed * vMove;	
	
	if (arrayWalk > 3) {	
		arrayWalk = 0;
	}
	
	image_index = walkDir * spriteSize + walkFrames[arrayWalk];
	
	frameTimer += 1;	
	if (frameTimer mod 8 == 0) {
		arrayWalk += 1;
	}
	if ((x mod 16) == 0 && (y mod 16) == 0) {	
		isMoving = false;
		isIdle = true;
		frameTimer = 0;
	}
}

if (isMoving){
	audio_play_sound(sndPasos,10,false);
	
}else{
	audio_stop_sound(sndPasos);
}
	show_debug_message(string(isMoving));