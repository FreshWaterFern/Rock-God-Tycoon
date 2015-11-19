/// step_mainmenu_AudioSettings()

if ( mouse_check_area(x_center-530+(375*music_slider)-24,y_center-42-24,x_center-530+(375*music_slider)+24,y_center-42+24) ){mouse_over = 0;}if ( button_select == 0 ){
spr[0]=global.sprite_map[?"Audio\Hand.png"]}else{spr[0]=global.sprite_map[?"Audio\Hand.png"]}
if ( mouse_check_area(x_center+130+(375*sound_slider)-24,y_center-42-24,x_center+130+(375*sound_slider)+24,y_center-42+24) ){mouse_over = 1;}if ( button_select == 1 ){
spr[1]=global.sprite_map[?"Audio\Hand.png"]}else{spr[1]=global.sprite_map[?"Audio\Hand.png"]}

if ( mouse_check_area(x_center+245-94,y_center+398-36,x_center+245+94,y_center+398+36) ){mouse_over = 2;}if ( button_select == 2 ){
spr[2]=global.sprite_map[?"Apply button\Apply button effect.png"]}else{spr[2]=global.sprite_map[?"Apply button\Apply button.png"]}
if ( mouse_check_area(x_center+480-94,y_center+398-36,x_center+480+94,y_center+398+36) ){mouse_over = 3;}if ( button_select == 3 ){
spr[3]=global.sprite_map[?"Back button\Back Button effect.png"]}else{spr[3]=global.sprite_map[?"Back button\Back Button.png"]}

if ( mouse_check_button_released(mb_left) ){slider_lock[0]=0;slider_lock[1]=0;
if ( mouse_over == button_select ){audio_play(0,0,0,0); // Click sound
switch(button_select){
case 0:{fxaa_set--;if(fxaa_set<0){fxaa_set=4;}break;}
case 1:{fxaa_set++;if(fxaa_set>4){fxaa_set=0;}break;}
case 2:{if ( obj_game.g_sound != sound_slider ){obj_game.g_sound=sound_slider}if ( obj_game.g_music != music_slider ){obj_game.g_music=music_slider}volume_update();game_save_settings();break;}
case 3:{music_slider=obj_game.g_music;sound_slider=obj_game.g_sound;menu_state = "Options";volume_update();break;}
}}button_select=-2;}

if ( mouse_check_button_pressed(mb_left) ){slider_lock[0]=0;slider_lock[1]=0;
if ( mouse_over != -1 ){button_select = mouse_over;
if ( button_select == 0 ){slider_lock[0]=1;}
if ( button_select == 1 ){slider_lock[1]=1;}
}else{button_select = -2;}}

// Special code for slider handling
if ( mouse_check_button(mb_left) ){
audio_emitter_gain(obj_game.emit_sound,sound_slider);audio_emitter_gain(obj_game.emit_music,music_slider);
if ( slider_lock[0] == 1 ){music_slider = (clamp(device_mouse_x_to_gui(0)-(x_center-530),0,375)/375);}
if ( slider_lock[1] == 1 ){sound_slider = (clamp(device_mouse_x_to_gui(0)-(x_center+130),0,375)/375);}}
