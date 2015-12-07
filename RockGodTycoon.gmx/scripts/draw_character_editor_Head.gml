/// draw_character_editor_Head()

gml_pragma("forceinline");

// Menu Pieces

if ( !surface_exists(surface_main) ){
surface_main = surface_create(view_wview[0],view_hview[0]);
surface_update = true;}

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

draw_background_part(obj_game.img_ext[0],0,0,1920,1080,0,0);
draw_background(obj_game.img_ext[2],0,27);

surface_reset_target();
surface_update = false;

}

draw_surface(surface_main,0,0);

with(obj_character_pose1){
x=1350;y=900;draw_self();}

// Eyes Button
scr_button_handle("Character Creation\Head Sub Menu\Buttons\CC_Button_Eyes.png","Character Creation\Head Sub Menu\Buttons\CC_Button_Eyes_effect.png",0,216,145,140,70);
// Nose Buttons
scr_button_handle("Character Creation\Head Sub Menu\Buttons\CC_Button_Nose.png","Character Creation\Head Sub Menu\Buttons\CC_Button_Nose_effect.png",1,224,234,140,70);
// Mouth Buttons
scr_button_handle("Character Creation\Head Sub Menu\Buttons\CC_Button_Mouth.png","Character Creation\Head Sub Menu\Buttons\CC_Button_Mouth_effect.png",2,236,315,165,70);
// Eyebrows Buttons
scr_button_handle("Character Creation\Head Sub Menu\Buttons\CC_Button_Eyebrows.png","Character Creation\Head Sub Menu\Buttons\CC_Button_Eyebrows_effect.png",3,285,410,260,70);
// Hairstyle Buttons
scr_button_handle("Character Creation\Head Sub Menu\Buttons\CC_Button_Hairstyle.png","Character Creation\Head Sub Menu\Buttons\CC_Button_Hairstyle_effect.png",4,278,502,250,70);
// Haircolor Buttons
scr_button_handle("Character Creation\Head Sub Menu\Buttons\CC_Button_Haircolor.png","Character Creation\Head Sub Menu\Buttons\CC_Button_Haircolor_effect.png",5,292,588,265,70);
// Beardstyle Buttons
scr_button_handle("Character Creation\Head Sub Menu\Buttons\CC_Button_Beardstyle.png","Character Creation\Head Sub Menu\Buttons\CC_Button_Beardstyle_effect.png",6,319,679,315,70);
// Beardcolor Buttons
scr_button_handle("Character Creation\Head Sub Menu\Buttons\CC_Button_Beardcolor.png","Character Creation\Head Sub Menu\Buttons\CC_Button_Beardcolor_effect.png",7,324,767,315,70);
// Headaccessories Buttons
scr_button_handle("Character Creation\Head Sub Menu\Buttons\CC_Button_Headaccessories.png","Character Creation\Head Sub Menu\Buttons\CC_Button_Headaccessories_effect.png",8,390,848,360,70);

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){audio_play(0,0,0,0); // Click sound
switch(button_select){
case 0:{menu_state="Eyes List";surface_update=true;break;}
case 1:{menu_state="Outfit";surface_update=true;break;}
case 2:{menu_state="Tattoos";surface_update=true;break;}
case 3:{menu_state="Instrument";surface_update=true;break;}
case 4:{if(obj_game.game_time_pause){obj_game.game_time_pause=false}else{obj_game.game_time_pause=true};break;}
case 5:{obj_game.game_time_speed=0;obj_game.game_time_pause=false;break;}
case 6:{obj_game.game_time_speed=1;obj_game.game_time_pause=false;break;}
case 7:{obj_game.game_time_speed=2;obj_game.game_time_pause=false;break;}
}}button_select=-2;}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}

mouse_over = -1;

//draw_external_sprite(global.sprite_map[?"Character Creation\Head Sub Menu\Buttons\CC_Button_Headaccessories.png"],0,mouse_x,mouse_y);
//draw_text(mouse_x,mouse_y-128,string(mouse_x)+","+string(mouse_y));
