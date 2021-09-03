/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//abandona el codigo si no esta sobre el boton; 
if !press exit; 

if (text == "INCIAR AVENTURA"){
	room_goto(rmScreenAventure); 
}

if (text= "AJUSTES"){
	room_goto(rmScreenSettings); 
}


if (text = "CREDITOS"){
	room_goto(rmScreenCredits); 
}

if (text == "SALIR"){
	game_end(); 
}
if (text = "REGRESAR"){
	room_goto(rmScreenMenu); 
}

if (text = ""){
	
	
}
          
 