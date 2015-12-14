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

// torso
global.item_list_torso = ds_list_create();
ds_list_add(global.item_list_torso,"No Shirt");
ds_list_add(global.item_list_torso,"Tanktop (Basic)");
ds_list_add(global.item_list_torso,"T-Shirt (Basic)");
ds_list_add(global.item_list_torso,"Jersey (Basic)");
ds_list_add(global.item_list_torso,"Jacket (No Sleeves)");

global.price_list_torso = ds_list_create();
ds_list_add(global.price_list_torso,0);
ds_list_add(global.price_list_torso,0);
ds_list_add(global.price_list_torso,0);
ds_list_add(global.price_list_torso,0);
ds_list_add(global.price_list_torso,0);

global.lock_list_torso = ds_list_create();
ds_list_add(global.lock_list_torso,0);
ds_list_add(global.lock_list_torso,0);
ds_list_add(global.lock_list_torso,0);
ds_list_add(global.lock_list_torso,0);
ds_list_add(global.lock_list_torso,0);

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

// Shoes
global.item_list_shoes = ds_list_create();
ds_list_add(global.item_list_shoes,"No Shoes");
ds_list_add(global.item_list_shoes,"Timberland");

global.price_list_shoes = ds_list_create();
ds_list_add(global.price_list_shoes,0);
ds_list_add(global.price_list_shoes,0);

global.lock_list_shoes = ds_list_create();
ds_list_add(global.lock_list_shoes,0);
ds_list_add(global.lock_list_shoes,0);

// Eyes
global.item_list_eyes = ds_list_create();
ds_list_add(global.item_list_eyes,"No Eyes");
ds_list_add(global.item_list_eyes,"Eyes");

global.price_list_eyes = ds_list_create();
ds_list_add(global.price_list_eyes,0);
ds_list_add(global.price_list_eyes,0);

global.lock_list_eyes = ds_list_create();
ds_list_add(global.lock_list_eyes,0);
ds_list_add(global.lock_list_eyes,0);

// Nose
global.item_list_nose = ds_list_create();
ds_list_add(global.item_list_nose,"No Nose");
ds_list_add(global.item_list_nose,"Nose");

global.price_list_nose = ds_list_create();
ds_list_add(global.price_list_nose,0);
ds_list_add(global.price_list_nose,0);

global.lock_list_nose = ds_list_create();
ds_list_add(global.lock_list_nose,0);
ds_list_add(global.lock_list_nose,0);

// Mouth
global.item_list_mouth = ds_list_create();
ds_list_add(global.item_list_mouth,"No Mouth");
ds_list_add(global.item_list_mouth,"Mouth");

global.price_list_mouth = ds_list_create();
ds_list_add(global.price_list_mouth,0);
ds_list_add(global.price_list_mouth,0);

global.lock_list_mouth = ds_list_create();
ds_list_add(global.lock_list_mouth,0);
ds_list_add(global.lock_list_mouth,0);

// Eyebrows
global.item_list_eyebrows = ds_list_create();
ds_list_add(global.item_list_eyebrows,"No Eyebrows");
ds_list_add(global.item_list_eyebrows,"Eyebrows");

global.price_list_eyebrows = ds_list_create();
ds_list_add(global.price_list_eyebrows,0);
ds_list_add(global.price_list_eyebrows,0);

global.lock_list_eyebrows = ds_list_create();
ds_list_add(global.lock_list_eyebrows,0);
ds_list_add(global.lock_list_eyebrows,0);
