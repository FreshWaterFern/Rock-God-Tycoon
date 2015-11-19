/// step_mainmenu_ControlSettings()

if ( mouse_check_area(x_center-507-64,y_center-325-64,x_center-507+64,y_center-325+64) ){mouse_over = 0;}if ( button_select == 0 ){
spr[0]=global.sprite_map[?"Notes\Green.png"]}else{spr[0]=global.sprite_map[?"Notes\Green1.png"]}
if ( mouse_check_area(x_center-352-64,y_center-325-64,x_center-352+64,y_center-325+64) ){mouse_over = 1;}if ( button_select == 1 ){
spr[1]=global.sprite_map[?"Notes\Red.png"]}else{spr[1]=global.sprite_map[?"Notes\Red1.png"]}
if ( mouse_check_area(x_center-195-64,y_center-325-64,x_center-195+64,y_center-325+64) ){mouse_over = 2;}if ( button_select == 2 ){
spr[2]=global.sprite_map[?"Notes\Yellow.png"]}else{spr[2]=global.sprite_map[?"Notes\Yellow1.png"]}
if ( mouse_check_area(x_center-38-64,y_center-325-64,x_center-38+64,y_center-325+64) ){mouse_over = 3;}if ( button_select == 3 ){
spr[3]=global.sprite_map[?"Notes\Blue.png"]}else{spr[3]=global.sprite_map[?"Notes\Blue1.png"]}
if ( mouse_check_area(x_center+120-64,y_center-325-64,x_center+120+64,y_center-325+64) ){mouse_over = 4;}if ( button_select == 4 ){
spr[4]=global.sprite_map[?"Notes\Orange.png"]}else{spr[4]=global.sprite_map[?"Notes\Orange1.png"]}
if ( mouse_check_area(x_center+404-115,y_center-325-22,x_center+404+115,y_center-325+22) ){mouse_over = 5;}if ( button_select == 5 ){
spr_internal[0]=real(obj_game.img_ext[14]);}else{spr_internal[0]=real(obj_game.img_ext[13]);}


if ( mouse_check_area(x_center+245-94,y_center+398-36,x_center+245+94,y_center+398+36) ){mouse_over = 6;}if ( button_select == 6 ){
spr[6]=global.sprite_map[?"Apply button\Apply button effect.png"]}else{spr[6]=global.sprite_map[?"Apply button\Apply button.png"]}
if ( mouse_check_area(x_center+480-94,y_center+398-36,x_center+480+94,y_center+398+36) ){mouse_over = 7;}if ( button_select == 7 ){
spr[7]=global.sprite_map[?"Back button\Back Button effect.png"]}else{spr[7]=global.sprite_map[?"Back button\Back Button.png"]}

if ( mouse_check_area(x_center-250-64,y_center+60-22,x_center-250+64,y_center+60+22) ){mouse_over = 8;}if ( button_select == 8 ){
spr_internal[1]=real(obj_game.img_ext[16]);}else{spr_internal[1]=real(obj_game.img_ext[15]);}

if ( mouse_check_area(x_center-250-64,y_center+160-22,x_center-250+64,y_center+160+22) ){mouse_over = 9;}if ( button_select == 9 ){
spr_internal[2]=real(obj_game.img_ext[18]);}else{spr_internal[2]=real(obj_game.img_ext[17]);}

if ( mouse_check_area(x_center-250-64,y_center+250-22,x_center-250+64,y_center+250+22) ){mouse_over = 10;}if ( button_select == 10 ){
spr_internal[3]=real(obj_game.img_ext[20]);}else{spr_internal[3]=real(obj_game.img_ext[19]);}

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){audio_play(0,0,0,0); // Click sound
key_state=button_select+1;
switch(button_select){
case 6:{
obj_game.control_map[?"key1"] = keyboard_set_key(obj_game.control_map[?"key1"],key_set[0]);
obj_game.control_map[?"key2"] = keyboard_set_key(obj_game.control_map[?"key2"],key_set[1]);
obj_game.control_map[?"key3"] = keyboard_set_key(obj_game.control_map[?"key3"],key_set[2]);
obj_game.control_map[?"key4"] = keyboard_set_key(obj_game.control_map[?"key4"],key_set[3]);
obj_game.control_map[?"key5"] = keyboard_set_key(obj_game.control_map[?"key5"],key_set[4]);
obj_game.control_map[?"key6"] = keyboard_set_key(obj_game.control_map[?"key6"],key_set[5]);
game_save_settings();break;}
case 7:{for(var i=5;i>=0;i--){key_set[i]=obj_game.control_map[?"key"+string(i+1)];}menu_state = "Options";break;}
case 8:{key_set[0]=ord("Z");key_set[1]=ord("X");key_set[2]=ord("C");key_set[3]=ord("V");key_set[4]=ord("B");key_set[5]=vk_enter;break;}
case 9:{key_set[0]=ord("1");key_set[1]=ord("2");key_set[2]=ord("3");key_set[3]=ord("4");key_set[4]=ord("5");key_set[5]=vk_enter;break;}
case 10:{key_set[0]=obj_game.control_map[?"key1"];key_set[1]=obj_game.control_map[?"key2"];key_set[2]=obj_game.control_map[?"key3"];key_set[3]=obj_game.control_map[?"key4"];key_set[4]=obj_game.control_map[?"key5"];key_set[5]=obj_game.control_map[?"key6"];break;}
}}button_select=-2;}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;key_state=0;
if ( button_select == 0 ){}
if ( button_select == 1 ){}
}else{button_select = -2;}}

if ( keyboard_check(vk_anykey) ){
switch(key_state){
case 1:{key_set[0] = keyboard_set_key(obj_game.control_map[?"key1"],keyboard_key);break;}
case 2:{key_set[1] = keyboard_set_key(obj_game.control_map[?"key2"],keyboard_key);break;}
case 3:{key_set[2] = keyboard_set_key(obj_game.control_map[?"key3"],keyboard_key);break;}
case 4:{key_set[3] = keyboard_set_key(obj_game.control_map[?"key4"],keyboard_key);break;}
case 5:{key_set[4] = keyboard_set_key(obj_game.control_map[?"key5"],keyboard_key);break;}
case 6:{key_set[5] = keyboard_set_key(obj_game.control_map[?"key6"],keyboard_key);break;}
}key_state=0;keyboard_clear(keyboard_key)}
