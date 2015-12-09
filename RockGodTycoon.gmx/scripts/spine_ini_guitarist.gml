/// spine_ini_guitarist()

/* 
    This script will initialize all of our attachments for all of our
    skeletons in advance so that they can be used later on.
*/

// Refer to item_list_ini() for item names
global.spine_attach_map = ds_map_create();
// Hairstyles
ds_map_add(global.spine_attach_map,"Ceasar","Ceasar_Haircut");
ds_map_add(global.spine_attach_map,"Fade","Fade_Haircut");
ds_map_add(global.spine_attach_map,"Fade (Line)","Fade_Line_Haircut");
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

// Create our attachments
skeleton_attachment_create("Eyebrows",Eyebrows,0,0,0,1,1,0);
skeleton_attachment_create("Eyes",Eyes,0,0,0,1,1,0);
skeleton_attachment_create("Glasses",Glasses,0,0,0,1,1,0);

// Hairstyles
skeleton_attachment_create("Fade_Line_Haircut",Fade_Line_Haircut,0,0,0,1,1,0);
skeleton_attachment_create("Fade_Haircut",Fade_Haircut,0,0,0,1,1,0);
skeleton_attachment_create("Ceasar_Haircut",Ceasar_Haircut,0,0,0,1,1,0);

skeleton_attachment_create("Nose",Nose,0,0,0,1,1,0);
skeleton_attachment_create("Mouth",Mouth,0,0,0,1,1,0);
skeleton_attachment_create("Bushy_Beard",Bushy_Beard,0,0,0,1,1,0);
skeleton_attachment_create("Guitar",Guitar,0,0,0,1,1,92);

// Legs & Calfs
skeleton_attachment_create("Crotch",Crotch,0,0,0,1,1,88.65);
skeleton_attachment_create("Leather_Crotch",Leather_Crotch,0,0,0,1,1,88.65);
skeleton_attachment_create("Leather_Pants_Right_Leg",Leather_Pants_Right_Leg,0,0,0,1,1,277.15);
skeleton_attachment_create("Leather_Pants_Left_Leg",Leather_Pants_Left_Leg,0,0,0,1,1,263.71);
skeleton_attachment_create("Leather_Pants_Right_Calf",Leather_Pants_Right_Calf,0,0,0,1,1,273.66);
skeleton_attachment_create("Leather_Pants_Left_Calf",Leather_Pants_Left_Calf,0,0,0,1,1,265.96);
skeleton_attachment_create("Cargo_Crotch",Cargo_Crotch,0,0,0,1,1,0);
skeleton_attachment_create("Cargo_Shorts_Right",Cargo_Shorts_Right,0,0,0,1,1,0);
skeleton_attachment_create("Cargo_Shorts_Left",Cargo_Shorts_Left,0,0,0,1,1,0);
skeleton_attachment_create("Cargo_Pants_Right_Leg",Cargo_Pants_Right_Leg,0,0,0,1,1,0);
skeleton_attachment_create("Cargo_Pants_Left_Leg",Cargo_Pants_Left_Leg,0,0,0,1,1,0);
skeleton_attachment_create("Cargo_Pants_Right_Calf",Cargo_Pants_Right_Calf,0,0,0,1,1,0);
skeleton_attachment_create("Cargo_Pants_Left_Calf",Cargo_Pants_Left_Calf,0,0,0,1,1,265.96);
skeleton_attachment_create("Jeans_Crotch",Jeans_Crotch,0,0,0,1,1,0);
skeleton_attachment_create("Jeans_Shorts_Right",Jeans_Shorts_Right,0,0,0,1,1,0);
skeleton_attachment_create("Jeans_Shorts_Left",Jeans_Shorts_Left,0,0,0,1,1,0);
skeleton_attachment_create("Jeans_Pants_Right_Leg",Jeans_Pants_Right_Leg,0,0,0,1,1,0);
skeleton_attachment_create("Jeans_Pants_Left_Leg",Jeans_Pants_Left_Leg,0,0,0,1,1,0);
skeleton_attachment_create("Jeans_Pants_Right_Calf",Jeans_Pants_Right_Calf,0,0,0,1,1,0);
skeleton_attachment_create("Jeans_Pants_Left_Calf",Jeans_Pants_Left_Calf,0,0,0,1,1,265.96);
skeleton_attachment_create("RaggedJeans_Crotch",RaggedJeans_Crotch,0,0,0,1,1,0);
skeleton_attachment_create("RaggedJeans_Shorts_Right",RaggedJeans_Shorts_Right,0,0,0,1,1,0);
skeleton_attachment_create("RaggedJeans_Shorts_Left",RaggedJeans_Shorts_Left,0,0,0,1,1,0);
skeleton_attachment_create("RaggedJeans_Pants_Right_Leg",RaggedJeans_Pants_Right_Leg,0,0,0,1,1,0);
skeleton_attachment_create("RaggedJeans_Pants_Left_Leg",RaggedJeans_Pants_Left_Leg,0,0,0,1,1,0);
skeleton_attachment_create("RaggedJeans_Pants_Right_Calf",RaggedJeans_Pants_Right_Calf,0,0,0,1,1,0);
skeleton_attachment_create("RaggedJeans_Pants_Left_Calf",RaggedJeans_Pants_Left_Calf,0,0,0,1,1,265.96);
