/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
is_being_dragged =false;

switch(setting){
	case "music":
		global.music_volume = amount_current;
		audio_sound_gain(sndMenus,amount_current/100,0);
		audio_sound_gain(sndGameBatalla,amount_current/100,0);
	break;

}