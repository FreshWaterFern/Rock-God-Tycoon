/// item_list_ini()
/*
    This script allows us to load all of our items into lists.
    It will also generate other variables we may refer to later.
*/

// hairstyles
global.item_list_hairstyles = ds_list_create();
ds_list_add(global.item_list_hairstyles,"Ceasar");
ds_list_add(global.item_list_hairstyles,"Fade");
ds_list_add(global.item_list_hairstyles,"Fade (Line)");

global.price_list_hairstyles = ds_list_create();
ds_list_add(global.price_list_hairstyles,0);
ds_list_add(global.price_list_hairstyles,0);
ds_list_add(global.price_list_hairstyles,0);

global.lock_list_hairstyles = ds_list_create();
ds_list_add(global.lock_list_hairstyles,0);
ds_list_add(global.lock_list_hairstyles,0);
ds_list_add(global.lock_list_hairstyles,0);

// Legs & Calfs
global.item_list_legs = ds_list_create();
ds_list_add(global.item_list_legs,"No Pants");
ds_list_add(global.item_list_legs,"Leather Pants");
ds_list_add(global.item_list_legs,"Cargo Shorts");
ds_list_add(global.item_list_legs,"Cargo Pants");
ds_list_add(global.item_list_legs,"Jeans Shorts");
ds_list_add(global.item_list_legs,"Jeans Pants");
ds_list_add(global.item_list_legs,"Ragged Jeans Shorts");
ds_list_add(global.item_list_legs,"Ragged Jeans Pants");

global.price_list_legs = ds_list_create();
ds_list_add(global.price_list_legs,0);
ds_list_add(global.price_list_legs,0);
ds_list_add(global.price_list_legs,0);
ds_list_add(global.price_list_legs,0);
ds_list_add(global.price_list_legs,0);
ds_list_add(global.price_list_legs,0);
ds_list_add(global.price_list_legs,0);
ds_list_add(global.price_list_legs,0);

global.lock_list_legs = ds_list_create();
ds_list_add(global.lock_list_legs,0);
ds_list_add(global.lock_list_legs,0);
ds_list_add(global.lock_list_legs,0);
ds_list_add(global.lock_list_legs,0);
ds_list_add(global.lock_list_legs,0);
ds_list_add(global.lock_list_legs,0);
ds_list_add(global.lock_list_legs,0);
ds_list_add(global.lock_list_legs,0);
