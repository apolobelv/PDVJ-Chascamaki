// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function randomText(){
	
	textList = ds_list_create(); 
	ds_list_add(textList, ["Buenos dias señorita", "vaya lindo dia "]); 
	ds_list_add(textList, ["1111","aaaa"]);
	
	
	
	
	
	return ds_list_find_value(textList, random_range(0, ds_list_size(textList))); 

}