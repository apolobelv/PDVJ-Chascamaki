/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if	(is_being_dragged == true){
	
	if (mouse_x>x){
		
		var  xx = abs(x-mouse_x);
		var amount = xx/sprite_width;
	
		amount = clamp (amount,0,1);
		amount_current = amount*100;
	}else{
		amount_current =0;
	
	}
}