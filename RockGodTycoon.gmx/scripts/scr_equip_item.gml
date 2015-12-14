/// scr_equip_item(object,slot,name)

switch(argument1){

// USING COMMENTS TO SPACE OUT SCRIPTS, DEAL WITH IT \\

case "Hair":{
with(argument0){
skeleton_attachment_set(argument1,global.spine_attach_map[?argument2]);
}break;}

// SPACING OUT THIS SCRIPT FOR EASY READING BAE \\

case "Torso":{
with(argument0){

switch(argument2){

case "No Shirt":{
skeleton_attachment_set("Torso Cloth",-1);
skeleton_attachment_set("Left Arm Cloth",-1);
skeleton_attachment_set("Right Arm Cloth",-1);
skeleton_attachment_set("Left Forearm Cloth",-1);
skeleton_attachment_set("Right Forearm Cloth",-1);
break;}

case "T-Shirt (Basic)":{
skeleton_attachment_set("Torso Cloth",global.spine_attach_map[?"Tshirt_Torso"]);
skeleton_attachment_set("Left Arm Cloth",global.spine_attach_map[?"Tshirt_Left_Sleeve"]);
skeleton_attachment_set("Right Arm Cloth",global.spine_attach_map[?"Tshirt_Right_Sleeve"]);
break;}

case "Tanktop (Basic)":{
skeleton_attachment_set("Torso Cloth",global.spine_attach_map[?"Tanktop_Shirt"]);
skeleton_attachment_set("Left Arm Cloth",-1);
skeleton_attachment_set("Right Arm Cloth",-1);
skeleton_attachment_set("Left Forearm Cloth",-1);
break;}

case "Jersey (Basic)":{
skeleton_attachment_set("Torso Cloth",global.spine_attach_map[?"Jersey_Shirt_Torso"]);
skeleton_attachment_set("Left Arm Cloth",global.spine_attach_map[?"Jersey_Shirt_Left_Sleeve"]);
skeleton_attachment_set("Left Forearm Cloth",global.spine_attach_map[?"Jersey_Shirt_Left_Forearm"]);
skeleton_attachment_set("Right Arm Cloth",global.spine_attach_map[?"Jersey_Shirt_Right_Sleeve"]);
break;}

case "Jacket (No Sleeves)":{
skeleton_attachment_set("Torso Cloth",global.spine_attach_map[?"Jacket_No_Sleeve_Shirt"]);
skeleton_attachment_set("Left Arm Cloth",-1);
skeleton_attachment_set("Right Arm Cloth",-1);
skeleton_attachment_set("Left Forearm Cloth",-1);
break;}

}


}break;}

// SPACING OUT THIS SCRIPT FOR EASY READING BAE \\

case "Legs":{
with(argument0){

switch(argument2){

case "No Pants":{
skeleton_attachment_set("Crotch Cloth",-1);
skeleton_attachment_set("Left Leg Cloth",-1);
skeleton_attachment_set("Right Leg Cloth",-1);
skeleton_attachment_set("Left Calf Cloth",-1);
skeleton_attachment_set("Right Calf Cloth",-1);
break;}

case "Leather Pants":{
skeleton_attachment_set("Crotch Cloth",global.spine_attach_map[?"Leather_Crotch"]);
skeleton_attachment_set("Left Leg Cloth",global.spine_attach_map[?"Leather_Pants_Left_Leg"]);
skeleton_attachment_set("Right Leg Cloth",global.spine_attach_map[?"Leather_Pants_Right_Leg"]);
skeleton_attachment_set("Left Calf Cloth",global.spine_attach_map[?"Leather_Pants_Left_Calf"]);
skeleton_attachment_set("Right Calf Cloth",global.spine_attach_map[?"Leather_Pants_Right_Calf"]);
break;}

case "Cargo Shorts":{
skeleton_attachment_set("Crotch Cloth",global.spine_attach_map[?"Cargo_Crotch"]);
skeleton_attachment_set("Left Leg Cloth",global.spine_attach_map[?"Cargo_Shorts_Left"]);
skeleton_attachment_set("Right Leg Cloth",global.spine_attach_map[?"Cargo_Shorts_Right"]);
skeleton_attachment_set("Left Calf Cloth",-1);
skeleton_attachment_set("Right Calf Cloth",-1);
break;}

case "Cargo Pants":{
skeleton_attachment_set("Crotch Cloth",global.spine_attach_map[?"Cargo_Crotch"]);
skeleton_attachment_set("Left Leg Cloth",global.spine_attach_map[?"Cargo_Pants_Left_Leg"]);
skeleton_attachment_set("Right Leg Cloth",global.spine_attach_map[?"Cargo_Pants_Right_Leg"]);
skeleton_attachment_set("Left Calf Cloth",global.spine_attach_map[?"Cargo_Pants_Left_Calf"]);
skeleton_attachment_set("Right Calf Cloth",global.spine_attach_map[?"Cargo_Pants_Right_Calf"]);
break;}

case "Jeans Shorts":{
skeleton_attachment_set("Crotch Cloth",global.spine_attach_map[?"Jeans_Crotch"]);
skeleton_attachment_set("Left Leg Cloth",global.spine_attach_map[?"Jeans_Shorts_Left"]);
skeleton_attachment_set("Right Leg Cloth",global.spine_attach_map[?"Jeans_Shorts_Right"]);
skeleton_attachment_set("Left Calf Cloth",-1);
skeleton_attachment_set("Right Calf Cloth",-1);
break;}

case "Jeans Pants":{
skeleton_attachment_set("Crotch Cloth",global.spine_attach_map[?"Jeans_Crotch"]);
skeleton_attachment_set("Left Leg Cloth",global.spine_attach_map[?"Jeans_Pants_Left_Leg"]);
skeleton_attachment_set("Right Leg Cloth",global.spine_attach_map[?"Jeans_Pants_Right_Leg"]);
skeleton_attachment_set("Left Calf Cloth",global.spine_attach_map[?"Jeans_Pants_Left_Calf"]);
skeleton_attachment_set("Right Calf Cloth",global.spine_attach_map[?"Jeans_Pants_Right_Calf"]);
break;}

case "Ragged Jeans Shorts":{
skeleton_attachment_set("Crotch Cloth",global.spine_attach_map[?"RaggedJeans_Crotch"]);
skeleton_attachment_set("Left Leg Cloth",global.spine_attach_map[?"RaggedJeans_Shorts_Left"]);
skeleton_attachment_set("Right Leg Cloth",global.spine_attach_map[?"RaggedJeans_Shorts_Right"]);
skeleton_attachment_set("Left Calf Cloth",-1);
skeleton_attachment_set("Right Calf Cloth",-1);
break;}

case "Ragged Jeans Pants":{
skeleton_attachment_set("Crotch Cloth",global.spine_attach_map[?"RaggedJeans_Crotch"]);
skeleton_attachment_set("Left Leg Cloth",global.spine_attach_map[?"RaggedJeans_Pants_Left_Leg"]);
skeleton_attachment_set("Right Leg Cloth",global.spine_attach_map[?"RaggedJeans_Pants_Right_Leg"]);
skeleton_attachment_set("Left Calf Cloth",global.spine_attach_map[?"RaggedJeans_Pants_Left_Calf"]);
skeleton_attachment_set("Right Calf Cloth",global.spine_attach_map[?"RaggedJeans_Pants_Right_Calf"]);
break;}

}

}break;}

case "Shoes":{
with(argument0){

switch(argument2){

case "No Shoes":{
skeleton_attachment_set("Left Shoe",-1);
skeleton_attachment_set("Right Shoe",-1);
break;}

case "Timberland":{
skeleton_attachment_set("Left Shoe",global.spine_attach_map[?"Timberland_Left"]);
skeleton_attachment_set("Right Shoe",global.spine_attach_map[?"Timberland_Right"]);
break;}

}

}break;}

case "Eyes":{
with(argument0){
if ( argument2 == "No Eyes" ){skeleton_attachment_set(argument1,-1);}else{
skeleton_attachment_set(argument1,global.spine_attach_map[?argument2]);}
}break;}

case "Nose":{
with(argument0){
if ( argument2 == "No Nose" ){skeleton_attachment_set(argument1,-1);}else{
skeleton_attachment_set(argument1,global.spine_attach_map[?argument2]);}
}break;}

case "Mouth":{
with(argument0){
if ( argument2 == "No Mouth" ){skeleton_attachment_set(argument1,-1);}else{
skeleton_attachment_set(argument1,global.spine_attach_map[?argument2]);}
}break;}

case "Eyebrows":{
with(argument0){
if ( argument2 == "No Eyebrows" ){skeleton_attachment_set(argument1,-1);}else{
skeleton_attachment_set(argument1,global.spine_attach_map[?argument2]);}
}break;}

}
