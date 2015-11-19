/// step_mainmenu_Options()

y_point = 334;

if ( mouse_check_area(x_center-200,y_center-y_point-32,x_center+200,y_center-y_point+32) ){mouse_over = 0;}if ( button_select == 0 ){
spr[0]=global.sprite_map[?"Options\Buttons\Video settings button effect.png"]}else{spr[0]=global.sprite_map[?"Options\Buttons\Video settings button.png"]}

y_point -= 245;
if ( mouse_check_area(x_center-200,y_center-y_point-32,x_center+200,y_center-y_point+32) ){mouse_over = 1;}if ( button_select == 1 ){
spr[1]=global.sprite_map[?"Options\Buttons\Audio settings button effect.png"]}else{spr[1]=global.sprite_map[?"Options\Buttons\Audio settings button.png"]}

y_point -= 241;
if ( mouse_check_area(x_center-200,y_center-y_point-32,x_center+200,y_center-y_point+32) ){mouse_over = 2;}if ( button_select == 2 ){
spr[2]=global.sprite_map[?"Options\Buttons\Control settings button effect.png"]}else{spr[2]=global.sprite_map[?"Options\Buttons\Control settings button.png"]}

y_point -= 171;
if ( mouse_check_area(x_center-200,y_center-y_point-32,x_center+200,y_center-y_point+32) ){mouse_over = 3;}if ( button_select == 3 ){
spr[3]=global.sprite_map[?"Back button\Back Button effect.png"]}else{spr[3]=global.sprite_map[?"Back button\Back Button.png"]}

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){audio_play(0,0,0,0); // Click sound
switch(button_select){
case 0:{menu_state = "Video Settings";break;}
case 1:{menu_state = "Audio Settings";break;}
case 2:{menu_state = "Control Settings";break;}
case 3:{menu_state = "Main Menu";break;}
}}button_select=-2;}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}
