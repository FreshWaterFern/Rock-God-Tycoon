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

// Head Button
if ( mouse_over != 0 ){color = c_white}else{color = gray}if ( button_select == 0 ){color = c_white}
draw_external_sprite_ext(spr[0],0,130,view_hview[0]-78,1,1,0,color,1);
// Outfit Buttons
if ( mouse_over != 1 ){color = c_white}else{color = gray}if ( button_select == 1 ){color = c_white}
draw_external_sprite_ext(spr[1],0,412,view_hview[0]-78,1,1,0,color,1);
// Tattoos Button
if ( mouse_over != 2 ){color = c_white}else{color = gray}if ( button_select == 2 ){color = c_white}
draw_external_sprite_ext(spr[2],0,706,view_hview[0]-78,1,1,0,color,1);
// Instrument Button
if ( mouse_over != 3 ){color = c_white}else{color = gray}if ( button_select == 3 ){color = c_white}
draw_external_sprite_ext(spr[3],0,1009,view_hview[0]-78,1,1,0,color,1);
// Reset Button
if ( obj_game.game_time_pause ){spr[4]=global.sprite_map[?"Main Game\GUI\Pause Button Effect.png"];}
if ( mouse_over != 4 ){color = c_white}else{color = gray}if ( button_select == 4 ){color = c_white}
draw_external_sprite_ext(spr[4],0,1218,1041,1,1,0,color,1);
/*
// Speed 1x Button
if ( obj_game.game_time_speed == 0 && !obj_game.game_time_pause ){spr[5]=global.sprite_map[?"Main Game\GUI\Speed 1 Button Effect.png"];}
if ( mouse_over != 5 ){color = c_white}else{color = gray}if ( button_select == 5 ){color = c_white}
draw_external_sprite_ext(spr[5],0,1279,1041,1,1,0,color,1);
// Speed 2x Button
if ( obj_game.game_time_speed == 1 && !obj_game.game_time_pause ){spr[6]=global.sprite_map[?"Main Game\GUI\Speed 2 Button Effect.png"];}
if ( mouse_over != 6 ){color = c_white}else{color = gray}if ( button_select == 6 ){color = c_white}
draw_external_sprite_ext(spr[6],0,1355,1041,1,1,0,color,1);
// Speed 3x Button
if ( obj_game.game_time_speed == 2 && !obj_game.game_time_pause ){spr[7]=global.sprite_map[?"Main Game\GUI\Speed 3 Button Effect.png"];}
if ( mouse_over != 7 ){color = c_white}else{color = gray}if ( button_select == 7 ){color = c_white}
draw_external_sprite_ext(spr[7],0,1430,1041,1,1,0,color,1);

// Stats Piece (Top Right)
draw_external_sprite(global.sprite_map[?"Main Game\GUI\Stats_Piece.png"],0,view_wview[0]-123,89);
*/
