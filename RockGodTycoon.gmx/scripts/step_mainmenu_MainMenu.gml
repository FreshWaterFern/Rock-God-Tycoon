/// step_mainmenu_MainMenu()

y_point = 192;

if ( mouse_check_area(x_center-200,y_center-y_point-32,x_center+200,y_center-y_point+32) ){mouse_over = 0;}if ( button_select == 0 ){
spr[0]=global.sprite_map[?"Main Menu\Buttons\New game button effect.png"]}else{spr[0]=global.sprite_map[?"Main Menu\Buttons\New game button.png"]}

y_point -= 116;
if ( mouse_check_area(x_center-200,y_center-y_point-32,x_center+200,y_center-y_point+32) ){mouse_over = 1;}if ( button_select == 1 ){
spr[1]=global.sprite_map[?"Main Menu\Buttons\Continue button effect.png"]}else{spr[1]=global.sprite_map[?"Main Menu\Buttons\Continue button.png"]}

y_point -= 116;
if ( mouse_check_area(x_center-200,y_center-y_point-32,x_center+200,y_center-y_point+32) ){mouse_over = 2;}if ( button_select == 2 ){
spr[2]=global.sprite_map[?"Main Menu\Buttons\Load game button effect.png"]}else{spr[2]=global.sprite_map[?"Main Menu\Buttons\Load game button.png"]}

y_point -= 116;
if ( mouse_check_area(x_center-200,y_center-y_point-32,x_center+200,y_center-y_point+32) ){mouse_over = 3;}if ( button_select == 3 ){
spr[3]=global.sprite_map[?"Main Menu\Buttons\Options button effect.png"]}else{spr[3]=global.sprite_map[?"Main Menu\Buttons\Options button.png"]}

y_point -= 116;
if ( mouse_check_area(x_center-200,y_center-y_point-32,x_center+200,y_center-y_point+32) ){mouse_over = 4;}if ( button_select == 4 ){
spr[4]=global.sprite_map[?"Main Menu\Buttons\Credits button effect.png"]}else{spr[4]=global.sprite_map[?"Main Menu\Buttons\Credits button.png"]}

y_point -= 116;
if ( mouse_check_area(x_center-200,y_center-y_point-32,x_center+200,y_center-y_point+32) ){mouse_over = 5;}if ( button_select == 5 ){
spr[5]=global.sprite_map[?"Main Menu\Buttons\Exit game button effect.png"]}else{spr[5]=global.sprite_map[?"Main Menu\Buttons\Exit game button.png"]}

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){audio_play(0,0,0,0); // Click sound
switch(button_select){
case 0:{obj_game.menu_set="start game";break;}
case 1:{break;}
case 2:{break;}
case 3:{menu_state = "Options";state_load=0;break;}
case 4:{break;}
case 5:{game_end();break;}
}}button_select=-2;}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}
