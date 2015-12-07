/// item_list_ini()
/*
    This script allows us to load all of our items into lists.
    It will also generate other variables we may refer to later.
*/

if ( ds_exists(global.item_list_beards,ds_type_list) )
{exit;}else{

// Beards
global.item_list_beards = ds_list_create();
ds_list_add(global.item_list_beards,"Bushy");
ds_list_add(global.item_list_beards,"Ceasar");
ds_list_add(global.item_list_beards,"Fade");
ds_list_add(global.item_list_beards,"Fade (Line)");
ds_list_add(global.item_list_beards,"Bushy");
ds_list_add(global.item_list_beards,"Ceasar");
ds_list_add(global.item_list_beards,"Fade");
ds_list_add(global.item_list_beards,"Fade (Line)");
ds_list_add(global.item_list_beards,"Bushy");
ds_list_add(global.item_list_beards,"Ceasar");
ds_list_add(global.item_list_beards,"Fade");
ds_list_add(global.item_list_beards,"Fade (Line)");
ds_list_add(global.item_list_beards,"Bushy");
ds_list_add(global.item_list_beards,"Ceasar");
ds_list_add(global.item_list_beards,"Fade");
ds_list_add(global.item_list_beards,"Fade (Line)");

global.price_list_beards = ds_list_create();
ds_list_add(global.price_list_beards,0);
ds_list_add(global.price_list_beards,1);
ds_list_add(global.price_list_beards,2);
ds_list_add(global.price_list_beards,3);
ds_list_add(global.price_list_beards,4);
ds_list_add(global.price_list_beards,5);
ds_list_add(global.price_list_beards,6);
ds_list_add(global.price_list_beards,7);
ds_list_add(global.price_list_beards,8);
ds_list_add(global.price_list_beards,9);
ds_list_add(global.price_list_beards,10);
ds_list_add(global.price_list_beards,11);
ds_list_add(global.price_list_beards,12);
ds_list_add(global.price_list_beards,13);
ds_list_add(global.price_list_beards,14);
ds_list_add(global.price_list_beards,15);

}
