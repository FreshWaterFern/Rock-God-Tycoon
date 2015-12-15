/// draw_character_editor_Outfit()

gml_pragma("forceinline");

// Menu Pieces

if ( !surface_exists(surface_main) ){
surface_main = surface_create(view_wview[0],view_hview[0]);
surface_update = true;}

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

draw_background_part(obj_game.img_ext[0],0,0,1920,1080,0,0);
draw_background(obj_game.img_ext[4],0,13);

surface_reset_target();
surface_update = false;

}

draw_surface(surface_main,0,0);

with(obj_character_pose1){
x=1350;y=900;draw_self();}

// Head Button
scr_button_handle("Character Creation\Tattoos Sub Menu\Buttons\Tattoo_Head_button.png","Character Creation\Tattoos Sub Menu\Buttons\Tattoo_Head_button_effect.png",0,344,185,210,70);
// Torso Button
scr_button_handle("Character Creation\Tattoos Sub Menu\Buttons\Tattoo_Torso_button.png","Character Creation\Tattoos Sub Menu\Buttons\Tattoo_Torso_button_effect.png",1,374,338,230,70);
// Arm Button
scr_button_handle("Character Creation\Tattoos Sub Menu\Buttons\Tattoo_Arm_button.png","Character Creation\Tattoos Sub Menu\Buttons\Tattoo_Arm_button_effect.png",2,360,501,210,70);
// Hands Button
scr_button_handle("Character Creation\Tattoos Sub Menu\Buttons\Tattoo_Hands_button.png","Character Creation\Tattoos Sub Menu\Buttons\Tattoo_Hands_button_effect.png",3,364,650,220,70);
// Legs Button
scr_button_handle("Character Creation\Tattoos Sub Menu\Buttons\Tattoo_Legs_button.png","Character Creation\Tattoos Sub Menu\Buttons\Tattoo_Legs_button_effect.png",4,364,797,220,70);
// Back Button
scr_button_handle("Character Creation\Buttons\Back Button.png","Character Creation\Buttons\Back Button Effect.png",5,477,890,140,60);

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){audio_play(0,0,0,0); // Click sound
switch(button_select){
case 0:{menu_state="Head";surface_update=true;break;}
case 1:{menu_state="Outfit";surface_update=true;break;}
case 2:{menu_state="Tattoos";surface_update=true;break;}
case 3:{menu_state="Instrument";surface_update=true;break;}
case 4:{if(obj_game.game_time_pause){obj_game.game_time_pause=false}else{obj_game.game_time_pause=true};break;}
case 5:{menu_state="Main";surface_update=true;break;}
case 6:{obj_game.game_time_speed=1;obj_game.game_time_pause=false;break;}
case 7:{obj_game.game_time_speed=2;obj_game.game_time_pause=false;break;}
}}button_select=-2;}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}

mouse_over = -1;

draw_external_sprite(global.sprite_map[?"Character Creation\Tattoos Sub Menu\Buttons\Tattoo_Legs_button.png"],0,mouse_x,mouse_y);
draw_text(mouse_x,mouse_y-128,string(mouse_x)+","+string(mouse_y));
