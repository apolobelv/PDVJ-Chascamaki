/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (text == "SALIR"){
	game_end(); 
}

if (text == "INICAR AVENTURA"){
	room_goto(rmScreenAventure); 
}

if (text= "AJUSTES"){
	room_goto(rmScreenSettings); 
}


if (text = "CREDITOS"){
	room_goto(rmScreenCredits); 
}


if (text = "REGRESAR"){
	room_goto(rmScreenMenu); 
}
          
 