/// draw_character_editor_Main()

gml_pragma("forceinline");

// Menu Pieces

if ( !surface_exists(surface_main) ){
surface_main = surface_create(view_wview[0],view_hview[0]);
surface_update = true;}

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

draw_background_part(obj_game.img_ext[0],0,0,1920,1080,0,0);
draw_background_part(obj_game.img_ext[0],1920,0,734,1026,-1,27);

surface_reset_target();
surface_update = false;

}

draw_surface(surface_main,0,0);

// Character
draw_sprite(spr_character_pose1,image_index,1350,900);

// Head Button
scr_button_handle("Character Creation\Buttons\Head Button.png","Character Creation\Buttons\Head Button effect.png",0,336,194,190,80);
// Outfit Buttons
scr_button_handle("Character Creation\Buttons\Outfit Button.png","Character Creation\Buttons\Outfit Button effect.png",1,361,364,230,80);
// Tattoos Buttons
scr_button_handle("Character Creation\Buttons\Tattoos_Button.png","Character Creation\Buttons\Tattoos_Button_effect.png",2,382,540,280,80);
// Instrument Buttons
scr_button_handle("Character Creation\Buttons\Instrument Button.png","Character Creation\Buttons\Instrument Button effect.png",3,424,740,370,80);

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){audio_play(0,0,0,0); // Click sound
switch(button_select){
case 0:{menu_state="Head";surface_update=true;;break;}
case 1:{break;}
case 2:{break;}
case 3:{break;}
case 4:{if(obj_game.game_time_pause){obj_game.game_time_pause=false}else{obj_game.game_time_pause=true};break;}
case 5:{obj_game.game_time_speed=0;obj_game.game_time_pause=false;break;}
case 6:{obj_game.game_time_speed=1;obj_game.game_time_pause=false;break;}
case 7:{obj_game.game_time_speed=2;obj_game.game_time_pause=false;break;}
}}button_select=-2;}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}
