/// step_ingame_menu_BandInfo()

gml_pragma("forceinline");

if ( mouse_check_area(285-20,213-460,285+20,213+60) ){mouse_over = 0;}if ( button_select == 0 ){
spr[0]=global.sprite_map[?"Band_Info\Member Tab\Member Button Effect.png"]}else{spr[0]=global.sprite_map[?"Band_Info\Member Tab\Member Button.png"]}

if ( mouse_check_area(285-20,370-60,285+20,370+460) ){mouse_over = 1;}if ( button_select == 1 ){
spr[1]=global.sprite_map[?"Band_Info\Rivalries Tab\Rivalries_Button_Effect.png"]}else{spr[1]=global.sprite_map[?"Band_Info\Rivalries Tab\Rivalries_Button.png"]}

if ( mouse_check_area(706-72,view_hview[0]-78-72,706+72,view_hview[0]-78+72) ){mouse_over = 2;}if ( button_select == 2 ){
spr[2]=global.sprite_map[?"Main Game\GUI\Band Info Button Effect.png"]}else{spr[2]=global.sprite_map[?"Main Game\GUI\Band Info Button.png"]}

if ( mouse_check_area(1009-72,view_hview[0]-78-72,1009+72,view_hview[0]-78+72) ){mouse_over = 3;}if ( button_select == 3 ){
spr[3]=global.sprite_map[?"Main Game\GUI\Shop Button Effect.png"]}else{spr[3]=global.sprite_map[?"Main Game\GUI\Shop Button.png"]}

if ( mouse_check_area(1800-80,1020-40,1800+80,1020+40) ){mouse_over = 4;}if ( button_select == 4 ){
spr[4]=global.sprite_map[?"Back button\Back Button effect.png"]}else{spr[4]=global.sprite_map[?"Back button\Back Button.png"]}

if ( band_info_page_left == 1 ){

if ( mouse_check_area(386-34,204-34,386+34,204+34) ){mouse_over = 5;}if ( button_select == 5 ){
spr[5]=global.sprite_map[?"Band_Info\Member Tab\Guitarist_Effect.png"]}else{spr[5]=global.sprite_map[?"Band_Info\Member Tab\Guitarist.png"]}

if ( mouse_check_area(508-34,204-34,508+34,204+34) ){mouse_over = 6;}if ( button_select == 6 ){
spr[6]=global.sprite_map[?"Band_Info\Member Tab\Bassist Effect.png"]}else{spr[6]=global.sprite_map[?"Band_Info\Member Tab\Bassist.png"]}

if ( mouse_check_area(630-34,204-34,630+34,204+34) ){mouse_over = 7;}if ( button_select == 7 ){
spr[7]=global.sprite_map[?"Band_Info\Member Tab\Drummer effect.png"]}else{spr[7]=global.sprite_map[?"Band_Info\Member Tab\Drummer.png"]}

if ( mouse_check_area(752-34,204-34,752+34,204+34) ){mouse_over = 8;}if ( button_select == 8 ){
spr[8]=global.sprite_map[?"Band_Info\Member Tab\Vocalist Effect.png"]}else{spr[8]=global.sprite_map[?"Band_Info\Member Tab\Vocalist.png"]}

}

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){audio_play(0,0,0,0); // Click sound
switch(button_select){
case 0:{band_info_page_left=0;surface_update=true;break;}
case 1:{band_info_page_left=1;surface_update=true;break;}
case 2:{menu_state="Band Info";obj_game.game_time_pause=true;surface_update=true;break;}
case 3:{break;}
case 4:{surface_update=true;menu_state="Main";break;}
}
if ( band_info_page_left == 1 ){
switch(button_select){
case 5:{break;}
case 6:{break;}
case 7:{break;}
case 8:{break;}
}}}button_select=-2;}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}
