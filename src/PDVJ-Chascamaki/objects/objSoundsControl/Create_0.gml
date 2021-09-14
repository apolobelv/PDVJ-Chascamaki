/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if (asset_get_tags(room_get_name(room))[0]== "menu"){
	audio_group_unload(audioGames);
	audio_group_load(audioMenus);
}else{
	audio_group_unload(audioMenus);
	audio_group_load(audioGames);
}


music_menu = sndMenus;
music_game = sndGameBatalla;


music_volume = 1; 
music= [sndGameBatalla];
sfx_volume = 1;




