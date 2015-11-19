/// step_mainmenu_VideoSettings()

if ( mouse_check_area(x_center-325-133-15,y_center-152-30,x_center-325-133+15,y_center-152+30) ){mouse_over = 0;}if ( button_select == 0 ){
spr[0]=global.sprite_map[?"Video Settings\Buttons\Arrow button effect.png"]}else{spr[0]=global.sprite_map[?"Video Settings\Buttons\Button.png"]}
if ( mouse_check_area(x_center-325+133-15,y_center-152-30,x_center-325+133+15,y_center-152+30) ){mouse_over = 1;}if ( button_select == 1 ){
spr[1]=global.sprite_map[?"Video Settings\Buttons\Arrow button effect.png"]}else{spr[1]=global.sprite_map[?"Video Settings\Buttons\Button.png"]}

if ( mouse_check_area(x_center-325-133-15,y_center+118-30,x_center-325-133+15,y_center+118+30) ){mouse_over = 2;}if ( button_select == 2 ){
spr[2]=global.sprite_map[?"Video Settings\Buttons\Arrow button effect.png"]}else{spr[2]=global.sprite_map[?"Video Settings\Buttons\Button.png"]}
if ( mouse_check_area(x_center-325+133-15,y_center+118-30,x_center-325+133+15,y_center+118+30) ){mouse_over = 3;}if ( button_select == 3 ){
spr[3]=global.sprite_map[?"Video Settings\Buttons\Arrow button effect.png"]}else{spr[3]=global.sprite_map[?"Video Settings\Buttons\Button.png"]}

if ( mouse_check_area(x_center+325-126-15,y_center-152-30,x_center+325-126+15,y_center-152+30) ){mouse_over = 4;}if ( button_select == 4 ){
spr[4]=global.sprite_map[?"Video Settings\Buttons\Arrow button effect.png"]}else{spr[4]=global.sprite_map[?"Video Settings\Buttons\Button.png"]}
if ( mouse_check_area(x_center+325+136-15,y_center-152-30,x_center+325+136+15,y_center-152+30) ){mouse_over = 5;}if ( button_select == 5 ){
spr[5]=global.sprite_map[?"Video Settings\Buttons\Arrow button effect.png"]}else{spr[5]=global.sprite_map[?"Video Settings\Buttons\Button.png"]}

if ( mouse_check_area(x_center+325-126-15,y_center+118-30,x_center+325-126+15,y_center+118+30) ){mouse_over = 6;}if ( button_select == 6 ){
spr[6]=global.sprite_map[?"Video Settings\Buttons\Arrow button effect.png"]}else{spr[6]=global.sprite_map[?"Video Settings\Buttons\Button.png"]}
if ( mouse_check_area(x_center+325+136-15,y_center+118-30,x_center+325+136+15,y_center+118+30) ){mouse_over = 7;}if ( button_select == 7 ){
spr[7]=global.sprite_map[?"Video Settings\Buttons\Arrow button effect.png"]}else{spr[7]=global.sprite_map[?"Video Settings\Buttons\Button.png"]}

if ( mouse_check_area(x_center+270-94,y_center+398-36,x_center+270+94,y_center+398+36) ){mouse_over = 8;}if ( button_select == 8 ){
spr[8]=global.sprite_map[?"Apply button\Apply button effect.png"]}else{spr[8]=global.sprite_map[?"Apply button\Apply button.png"]}
if ( mouse_check_area(x_center+505-94,y_center+398-36,x_center+505+94,y_center+398+36) ){mouse_over = 9;}if ( button_select == 9 ){
spr[9]=global.sprite_map[?"Back button\Back Button effect.png"]}else{spr[9]=global.sprite_map[?"Back button\Back Button.png"]}

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){audio_play(0,0,0,0); // Click sound
switch(button_select){
case 0:{fxaa_set--;if(fxaa_set<0){fxaa_set=4;}break;}
case 1:{fxaa_set++;if(fxaa_set>4){fxaa_set=0;}break;}
case 2:{vsync_set--;if(vsync_set<0){vsync_set=1;}break;}
case 3:{vsync_set++;if(vsync_set>1){vsync_set=0;}break;}
case 4:{res_set--;if(res_set<0){res_set=obj_game.res_count-1;}break;}
case 5:{res_set++;if(res_set>obj_game.res_count-1){res_set=0;}break;}
case 6:{fs_set--;if(fs_set<0){fs_set=1;}break;}
case 7:{fs_set++;if(fs_set>1){fs_set=0;}break;}
case 8:{if ( obj_game.g_vsync != vsync_set || obj_game.g_fs != fs_set ){message_show("The game needs to restart to apply vsync.",0);io_clear();}
if(obj_game.g_fxaa!=fxaa_set||obj_game.g_vsync!=vsync_set||obj_game.g_res!=res_set||obj_game.g_fs!=fs_set){
obj_game.g_vsync=vsync_set;obj_game.g_fxaa=fxaa_set;obj_game.g_res=res_set;obj_game.g_fs=fs_set;resolution_update();game_save_settings();}break;}
case 9:{menu_state = "Options";fxaa_set = obj_game.g_fxaa;vsync_set = obj_game.g_vsync;res_set = obj_game.g_res;fs_set = obj_game.g_fs;state_load=0;break;}
}}button_select=-2;}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}
