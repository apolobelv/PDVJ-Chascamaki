// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function randomText(){
	
	textList = ds_list_create(); 
	ds_list_add(textList, ["Buenos dias señorita", "Vaya lindo dia "]); 
	ds_list_add(textList, ["El pueblo es tan tranquilo en días normales." ,"Cuando hay un evento de importancia, ¡es muy evidente, ja ja ja!"]);
	ds_list_add(textList, ["¡Rosa! Tu madre me ha contado lo de la entrevista.", 	"¡Felicitaciones mija! Y buena suerte. Ese trabajo sí es de bastante plata. ","Tal vez dales mi referencia cuando lo consigas, ¡ja ja ja!."]); 
	ds_list_add(textList, ["¡Rosa! ¿Vas a participar en el evento?", "Mira esto. Los sitios donde esconden los objetos suelen ser sitios de importancia. O saltan a la vista.","Entonces esa es una buena manera de encontrarlos.","Te digo esto solo a ti porque eres cool, ¿ok?"]); 
	ds_list_add(textList, ["Se que es un deporte en el que participan niños mayormente, pero el torneo de Chascamaki quintianual es un evento muy importante.", "¡Y entretenido de ver! Siempre me veo los partidos destacados. ¡Son muy emocionantes, ja ja ja!","Me pregunto si en esta ocasion veremos a algun retador interesante."]); 
	ds_list_add(textList, ["Eventos como el de hoy pueden ser un poco distrayentes.", "¡Oh! No lo tomes en un mal sentido. Es que es pueblo es tan chico, que puedes escuchar a los niños jugando desde tu oficina, ¡ja ja ja!" ,"Desearía tener tiempo para jugar a algo también."]); 
	ds_list_add(textList, ["B-b-buenos días Sr. Chascacorp. M-m-mi nombre es…", "¡Oh! ¡Lo siento! Estoy practicando. Tengo una entrevista en ChascaCORP.","¡Estoy muy nervioso! Una oportunidad como ésta se da una sola vez en la vida."," Y… es extraño. Creí que iba a encontrarme con otra postulante."]); 
	ds_list_add(textList, ["Hakan se fue al callejón.", "Está esperando al resto de su grupo", "Sabes, esos muchachos me dan una muy mala vibra. Realmente espero que no se estén metiendo en ningún problema."]); 
	ds_list_add(textList, ["He salido temprano a caminar para hacer un poco de ejercicio, ¡y me he topado con todo este alboroto!", "¿Pero qué está pasando en realidad?"]); 
	ds_list_add(textList, ["No puedo hablar ahora", "Rapido Rapido. . .", "LLegare Tardeeeee . . . "]); 

	return ds_list_find_value(textList, random_range(0, ds_list_size(textList))); 

}