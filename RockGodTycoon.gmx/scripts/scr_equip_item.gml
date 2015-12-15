/// scr_equip_item(object,slot,name)

switch(argument1){

// USING COMMENTS TO SPACE OUT SCRIPTS, DEAL WITH IT \\

case "Hair":{
with(argument0){

switch(argument2){

case "No Hair":{
skeleton_attachment_set("Hair",-1);
break;}

case "Ceasar":{
skeleton_attachment_set("Hair","Ceasar_Haircut");
break;}

case "Fade":{
skeleton_attachment_set("Hair","Fade_Haircut");
break;}

case "Fade (Line)":{
skeleton_attachment_set("Hair","Fade_Line_Haircut");
break;}

}

}break;}

case "Beard":{
with(argument0){

switch(argument2){

case "No Beard":{
skeleton_attachment_set("Beard",-1);
break;}

case "Short":{
skeleton_attachment_set("Beard","Short_Beard");
break;}

case "Bushy":{
skeleton_attachment_set("Beard","Bushy_Beard");
break;}

}

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
skeleton_attachment_set("Torso Cloth","Tshirt_Torso");
skeleton_attachment_set("Left Arm Cloth","Tshirt_Left_Sleeve");
skeleton_attachment_set("Right Arm Cloth","Tshirt_Right_Sleeve");
break;}

case "Tanktop (Basic)":{
skeleton_attachment_set("Torso Cloth","Tanktop_Shirt");
skeleton_attachment_set("Left Arm Cloth",-1);
skeleton_attachment_set("Right Arm Cloth",-1);
skeleton_attachment_set("Left Forearm Cloth",-1);
break;}

case "Jersey (Basic)":{
skeleton_attachment_set("Torso Cloth","Jersey_Shirt_Torso");
skeleton_attachment_set("Left Arm Cloth","Jersey_Shirt_Left_Sleeve");
skeleton_attachment_set("Left Forearm Cloth","Jersey_Shirt_Left_Forearm");
skeleton_attachment_set("Right Arm Cloth","Jersey_Shirt_Right_Sleeve");
break;}

case "Jacket (No Sleeves)":{
skeleton_attachment_set("Torso Cloth","Jacket_No_Sleeve_Shirt");
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
skeleton_attachment_set("Crotch Cloth","Leather_Crotch");
skeleton_attachment_set("Left Leg Cloth","Leather_Pants_Left_Leg");
skeleton_attachment_set("Right Leg Cloth","Leather_Pants_Right_Leg");
skeleton_attachment_set("Left Calf Cloth","Leather_Pants_Left_Calf");
skeleton_attachment_set("Right Calf Cloth","Leather_Pants_Right_Calf");
break;}

case "Cargo Shorts":{
skeleton_attachment_set("Crotch Cloth","Cargo_Crotch");
skeleton_attachment_set("Left Leg Cloth","Cargo_Shorts_Left");
skeleton_attachment_set("Right Leg Cloth","Cargo_Shorts_Right");
skeleton_attachment_set("Left Calf Cloth",-1);
skeleton_attachment_set("Right Calf Cloth",-1);
break;}

case "Cargo Pants":{
skeleton_attachment_set("Crotch Cloth","Cargo_Crotch");
skeleton_attachment_set("Left Leg Cloth","Cargo_Pants_Left_Leg");
skeleton_attachment_set("Right Leg Cloth","Cargo_Pants_Right_Leg");
skeleton_attachment_set("Left Calf Cloth","Cargo_Pants_Left_Calf");
skeleton_attachment_set("Right Calf Cloth","Cargo_Pants_Right_Calf");
break;}

case "Jeans Shorts":{
skeleton_attachment_set("Crotch Cloth","Jeans_Crotch");
skeleton_attachment_set("Left Leg Cloth","Jeans_Shorts_Left");
skeleton_attachment_set("Right Leg Cloth","Jeans_Shorts_Right");
skeleton_attachment_set("Left Calf Cloth",-1);
skeleton_attachment_set("Right Calf Cloth",-1);
break;}

case "Jeans Pants":{
skeleton_attachment_set("Crotch Cloth","Jeans_Crotch");
skeleton_attachment_set("Left Leg Cloth","Jeans_Pants_Left_Leg");
skeleton_attachment_set("Right Leg Cloth","Jeans_Pants_Right_Leg");
skeleton_attachment_set("Left Calf Cloth","Jeans_Pants_Left_Calf");
skeleton_attachment_set("Right Calf Cloth","Jeans_Pants_Right_Calf");
break;}

case "Ragged Jeans Shorts":{
skeleton_attachment_set("Crotch Cloth","RaggedJeans_Crotch");
skeleton_attachment_set("Left Leg Cloth","RaggedJeans_Shorts_Left");
skeleton_attachment_set("Right Leg Cloth","RaggedJeans_Shorts_Right");
skeleton_attachment_set("Left Calf Cloth",-1);
skeleton_attachment_set("Right Calf Cloth",-1);
break;}

case "Ragged Jeans Pants":{
skeleton_attachment_set("Crotch Cloth","RaggedJeans_Crotch");
skeleton_attachment_set("Left Leg Cloth","RaggedJeans_Pants_Left_Leg");
skeleton_attachment_set("Right Leg Cloth","RaggedJeans_Pants_Right_Leg");
skeleton_attachment_set("Left Calf Cloth","RaggedJeans_Pants_Left_Calf");
skeleton_attachment_set("Right Calf Cloth","RaggedJeans_Pants_Right_Calf");
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
skeleton_attachment_set("Left Shoe","Timberland_Left");
skeleton_attachment_set("Right Shoe","Timberland_Right");
break;}

case "Converse":{
skeleton_attachment_set("Left Shoe","Converse_Left");
skeleton_attachment_set("Right Shoe","Converse_Right");
break;}

}

}break;}

case "Eyes":{
with(argument0){
if ( argument2 == "No Eyes" ){skeleton_attachment_set(argument1,-1);}else{
skeleton_attachment_set(argument1,argument2);}
}break;}

case "Nose":{
with(argument0){
if ( argument2 == "No Nose" ){skeleton_attachment_set(argument1,-1);}else{
skeleton_attachment_set(argument1,argument2);}
}break;}

case "Mouth":{
with(argument0){
if ( argument2 == "No Mouth" ){skeleton_attachment_set(argument1,-1);}else{
skeleton_attachment_set(argument1,argument2);}
}break;}

case "Eyebrows":{
with(argument0){
if ( argument2 == "No Eyebrows" ){skeleton_attachment_set(argument1,-1);}else{
skeleton_attachment_set(argument1,argument2);}
}break;}

case "Guitar":{
with(argument0){

switch(argument2){

case "No Guitar":{
skeleton_attachment_set("Guitar",-1);
break;}

case "Guitar":{
skeleton_attachment_set("Guitar","Guitar");
break;}

}

}break;}

}
