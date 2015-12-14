/// spine_ini_guitarist()

/* 
    This script will initialize all of our attachments for all of our
    skeletons in advance so that they can be used later on.
*/

// Refer to item_list_ini() for item names
global.spine_attach_map = ds_map_create();
// Eyes
ds_map_add(global.spine_attach_map,"Eyes","Eyes");
// Nose
ds_map_add(global.spine_attach_map,"Nose","Nose");
// Mouth
ds_map_add(global.spine_attach_map,"Mouth","Mouth");
// Eyebrows
ds_map_add(global.spine_attach_map,"Eyebrows","Eyebrows");
// Hairstyles
ds_map_add(global.spine_attach_map,"Ceasar","Ceasar_Haircut");
ds_map_add(global.spine_attach_map,"Fade","Fade_Haircut");
ds_map_add(global.spine_attach_map,"Fade (Line)","Fade_Line_Haircut");
// Torso
ds_map_add(global.spine_attach_map,"Tshirt_Torso","Tshirt_Torso");
ds_map_add(global.spine_attach_map,"Tshirt_Right_Sleeve","Tshirt_Right_Sleeve");
ds_map_add(global.spine_attach_map,"Tshirt_Left_Sleeve","Tshirt_Left_Sleeve");
ds_map_add(global.spine_attach_map,"Tanktop_Shirt","Tanktop_Shirt");
ds_map_add(global.spine_attach_map,"Jersey_Shirt_Torso","Jersey_Shirt_Torso");
ds_map_add(global.spine_attach_map,"Jersey_Shirt_Right_Sleeve","Jersey_Shirt_Right_Sleeve");
ds_map_add(global.spine_attach_map,"Jersey_Shirt_Left_Sleeve","Jersey_Shirt_Left_Sleeve");
ds_map_add(global.spine_attach_map,"Jersey_Shirt_Left_Forearm","Jersey_Shirt_Left_Forearm");
ds_map_add(global.spine_attach_map,"Jacket_No_Sleeve_Shirt","Jacket_No_Sleeve_Shirt");
// Legs & Calfs
ds_map_add(global.spine_attach_map,"Leather_Crotch","Leather_Crotch");
ds_map_add(global.spine_attach_map,"Leather_Pants_Right_Leg","Leather_Pants_Right_Leg");
ds_map_add(global.spine_attach_map,"Leather_Pants_Left_Leg","Leather_Pants_Left_Leg");
ds_map_add(global.spine_attach_map,"Leather_Pants_Left_Calf","Leather_Pants_Left_Calf");
ds_map_add(global.spine_attach_map,"Leather_Pants_Right_Calf","Leather_Pants_Right_Calf");
ds_map_add(global.spine_attach_map,"Cargo_Crotch","Cargo_Crotch");
ds_map_add(global.spine_attach_map,"Cargo_Shorts_Left","Cargo_Shorts_Left");
ds_map_add(global.spine_attach_map,"Cargo_Shorts_Right","Cargo_Shorts_Right");
ds_map_add(global.spine_attach_map,"Cargo_Pants_Left_Leg","Cargo_Pants_Left_Leg");
ds_map_add(global.spine_attach_map,"Cargo_Pants_Right_Leg","Cargo_Pants_Right_Leg");
ds_map_add(global.spine_attach_map,"Cargo_Pants_Left_Calf","Cargo_Pants_Left_Calf");
ds_map_add(global.spine_attach_map,"Cargo_Pants_Right_Calf","Cargo_Pants_Right_Calf");
ds_map_add(global.spine_attach_map,"Jeans_Crotch","Jeans_Crotch");
ds_map_add(global.spine_attach_map,"Jeans_Shorts_Left","Jeans_Shorts_Left");
ds_map_add(global.spine_attach_map,"Jeans_Shorts_Right","Jeans_Shorts_Right");
ds_map_add(global.spine_attach_map,"Jeans_Pants_Left_Leg","Jeans_Pants_Left_Leg");
ds_map_add(global.spine_attach_map,"Jeans_Pants_Right_Leg","Jeans_Pants_Right_Leg");
ds_map_add(global.spine_attach_map,"Jeans_Pants_Left_Calf","Jeans_Pants_Left_Calf");
ds_map_add(global.spine_attach_map,"Jeans_Pants_Right_Calf","Jeans_Pants_Right_Calf");
ds_map_add(global.spine_attach_map,"RaggedJeans_Crotch","RaggedJeans_Crotch");
ds_map_add(global.spine_attach_map,"RaggedJeans_Shorts_Left","RaggedJeans_Shorts_Left");
ds_map_add(global.spine_attach_map,"RaggedJeans_Shorts_Right","RaggedJeans_Shorts_Right");
ds_map_add(global.spine_attach_map,"RaggedJeans_Pants_Left_Leg","RaggedJeans_Pants_Left_Leg");
ds_map_add(global.spine_attach_map,"RaggedJeans_Pants_Right_Leg","RaggedJeans_Pants_Right_Leg");
ds_map_add(global.spine_attach_map,"RaggedJeans_Pants_Left_Calf","RaggedJeans_Pants_Left_Calf");
ds_map_add(global.spine_attach_map,"RaggedJeans_Pants_Right_Calf","RaggedJeans_Pants_Right_Calf");
// Shoes
ds_map_add(global.spine_attach_map,"Timberland_Left","Timberland_Left");
ds_map_add(global.spine_attach_map,"Timberland_Right","Timberland_Right");

// Create our attachments

// Eyebrows
skeleton_attachment_create("Eyebrows",Eyebrows,0,0,0,1,1,0);

// Eyes
skeleton_attachment_create("Eyes",Eyes,0,0,0,1,1,0);

// Glasses
skeleton_attachment_create("Glasses",Glasses,0,0,0,1,1,0);

// Hairstyles
skeleton_attachment_create("Fade_Line_Haircut",Fade_Line_Haircut,0,0,0,1,1,0);
skeleton_attachment_create("Fade_Haircut",Fade_Haircut,0,0,0,1,1,0);
skeleton_attachment_create("Ceasar_Haircut",Ceasar_Haircut,0,0,0,1,1,0);

skeleton_attachment_create("Nose",Nose,0,0,0,1,1,0);
skeleton_attachment_create("Mouth",Mouth,0,0,0,1,1,0);
skeleton_attachment_create("Bushy_Beard",Bushy_Beard,0,0,0,1,1,0);
skeleton_attachment_create("Guitar",Guitar,0,0,0,1,1,92);

// Torso
skeleton_attachment_create("Tshirt_Torso",Tshirt_Torso,0,0,0,1,1,269.55);
skeleton_attachment_create("Tshirt_Right_Sleeve",Tshirt_Right_Sleeve,0,0,0,1,1,74.56);
skeleton_attachment_create("Tshirt_Left_Sleeve",Tshirt_Left_Sleeve,0,0,0,1,1,135.24);
skeleton_attachment_create("Tanktop_Shirt",Tanktop_Shirt,0,0,0,1,1,269.55);
skeleton_attachment_create("Jersey_Shirt_Torso",Jersey_Shirt_Torso,0,0,0,1,1,269.55);
skeleton_attachment_create("Jersey_Shirt_Right_Sleeve",Jersey_Shirt_Right_Sleeve,0,0,0,1,1,74.56);
skeleton_attachment_create("Jersey_Shirt_Left_Sleeve",Jersey_Shirt_Left_Sleeve,0,0,0,1,1,135.24);
skeleton_attachment_create("Jersey_Shirt_Left_Sleeve",Jersey_Shirt_Left_Forearm,0,0,0,1,1,35.85);
skeleton_attachment_create("Jacket_No_Sleeve_Shirt",Jacket_No_Sleeve_Shirt,0,0,0,1,1,269.55);

// Legs & Calfs
skeleton_attachment_create("Crotch",Crotch,0,0,0,1,1,270);
skeleton_attachment_create("Leather_Crotch",Leather_Crotch,0,0,0,1,1,270);
skeleton_attachment_create("Leather_Pants_Right_Leg",Leather_Pants_Right_Leg,0,0,0,1,1,82.4);
skeleton_attachment_create("Leather_Pants_Left_Leg",Leather_Pants_Left_Leg,0,0,0,1,1,97.64);
skeleton_attachment_create("Leather_Pants_Right_Calf",Leather_Pants_Right_Calf,0,0,0,1,1,83.76);
skeleton_attachment_create("Leather_Pants_Left_Calf",Leather_Pants_Left_Calf,0,0,0,1,1,94.49);
skeleton_attachment_create("Cargo_Crotch",Cargo_Crotch,0,0,0,1,1,270);
skeleton_attachment_create("Cargo_Shorts_Right",Cargo_Shorts_Right,0,0,0,1,1,82.4);
skeleton_attachment_create("Cargo_Shorts_Left",Cargo_Shorts_Left,0,0,0,1,1,97.64);
skeleton_attachment_create("Cargo_Pants_Right_Leg",Cargo_Pants_Right_Leg,0,0,0,1,1,82.4);
skeleton_attachment_create("Cargo_Pants_Left_Leg",Cargo_Pants_Left_Leg,0,0,0,1,1,97.64);
skeleton_attachment_create("Cargo_Pants_Right_Calf",Cargo_Pants_Right_Calf,0,0,0,1,1,83.76);
skeleton_attachment_create("Cargo_Pants_Left_Calf",Cargo_Pants_Left_Calf,0,0,0,1,1,94.49);
skeleton_attachment_create("Jeans_Crotch",Jeans_Crotch,0,0,0,1,1,270);
skeleton_attachment_create("Jeans_Shorts_Right",Jeans_Shorts_Right,0,-31,2,1,1,82.4);
skeleton_attachment_create("Jeans_Shorts_Left",Jeans_Shorts_Left,0,-31,0,1,1,97.64);
skeleton_attachment_create("Jeans_Pants_Right_Leg",Jeans_Pants_Right_Leg,0,0,0,1,1,82.4);
skeleton_attachment_create("Jeans_Pants_Left_Leg",Jeans_Pants_Left_Leg,0,0,0,1,1,97.64);
skeleton_attachment_create("Jeans_Pants_Right_Calf",Jeans_Pants_Right_Calf,0,0,0,1,1,83.76);
skeleton_attachment_create("Jeans_Pants_Left_Calf",Jeans_Pants_Left_Calf,0,0,0,1,1,94.49);
skeleton_attachment_create("RaggedJeans_Crotch",RaggedJeans_Crotch,0,0,0,1,1,270);
skeleton_attachment_create("RaggedJeans_Shorts_Right",RaggedJeans_Shorts_Right,0,-31,2,1,1,82.4);
skeleton_attachment_create("RaggedJeans_Shorts_Left",RaggedJeans_Shorts_Left,0,-31,0,1,1,97.64);
skeleton_attachment_create("RaggedJeans_Pants_Right_Leg",RaggedJeans_Pants_Right_Leg,0,0,0,1,1,82.4);
skeleton_attachment_create("RaggedJeans_Pants_Left_Leg",RaggedJeans_Pants_Left_Leg,0,0,0,1,1,97.64);
skeleton_attachment_create("RaggedJeans_Pants_Right_Calf",RaggedJeans_Pants_Right_Calf,0,0,0,1,1,83.76);
skeleton_attachment_create("RaggedJeans_Pants_Left_Calf",RaggedJeans_Pants_Left_Calf,0,0,0,1,1,94.49);

// Shoes
skeleton_attachment_create("Timberland_Left",Timberland_Left,0,0,0,1,1,94.49);
skeleton_attachment_create("Timberland_Right",Timberland_Right,0,0,0,1,1,83.76);
