/// spine_ini_guitarist()

/* 
    This script will initialize all of our attachments for all of our
    skeletons in advance so that they can be used later on.
*/

// Refer to item_list_ini() for item names
global.spine_attach_map = ds_map_create();
ds_map_add(global.spine_attach_map,"Ceasar","Ceasar_Haircut");
ds_map_add(global.spine_attach_map,"Fade","Fade_Haircut");
ds_map_add(global.spine_attach_map,"Fade (Line)","Fade_Line_Haircut");

// Create our attachments
skeleton_attachment_create("Eyebrows",Eyebrows,0,0,0,1,1,0);
skeleton_attachment_create("Eyes",Eyes,0,0,0,1,1,0);
skeleton_attachment_create("Glasses",Glasses,0,0,0,1,1,0);
skeleton_attachment_create("Fade_Line_Haircut",Fade_Line_Haircut,0,0,0,1,1,0);
skeleton_attachment_create("Fade_Haircut",Fade_Haircut,0,0,0,1,1,0);
skeleton_attachment_create("Ceasar_Haircut",Ceasar_Haircut,0,0,0,1,1,0);
skeleton_attachment_create("Nose",Nose,0,0,0,1,1,0);
skeleton_attachment_create("Mouth",Mouth,0,0,0,1,1,0);
skeleton_attachment_create("Bushy_Beard",Bushy_Beard,0,0,0,1,1,0);
skeleton_attachment_create("Guitar",Guitar,0,0,0,1,1,92);
