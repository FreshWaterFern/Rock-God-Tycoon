/// draw_mainmenu_Options()

gml_pragma("forceinline");

// Do Whatever Special Code Here
if ( light_rot2 < -1 ){light_rot_speed2 = 0.025;}if ( light_rot2 > 3.5 ){light_rot_speed2 = -0.025;}
light_rot2 += light_rot_speed2;

if ( speaker_move1 < 0 ){speaker_move_speed1 = 0.15;}if ( speaker_move1 > 12 ){speaker_move_speed1 = -0.15;}
speaker_move1 += speaker_move_speed1;

// Menu Pieces
if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

draw_background(obj_game.img_ext[1],0,0);

surface_reset_target();
}

draw_surface(surface_main,0,0);


draw_sprite_ext(obj_game.img_ext[11],0,x_center-920,y_center+580,1,1,light_rot2,c_white,1);
draw_sprite_ext(obj_game.img_ext[11],0,x_center+920,y_center+580,-1,1,-light_rot2,c_white,1);
draw_external_sprite_ext(global.sprite_map[?"Options\Speaker.png"],0,x_center-900-speaker_move1,y_center-470-speaker_move1,1,1,0,c_white,1);
draw_external_sprite_ext(global.sprite_map[?"Options\Speaker.png"],0,x_center+900+speaker_move1,y_center-470-speaker_move1,-1,1,0,c_white,1);
draw_background(obj_game.img_ext[4],x_center-431,y_center-451);

// Buttons
y_point = 328;
// Video Settings
if ( mouse_over != 0 ){color = c_white}else{color = gray}if ( button_select == 0 ){color = c_white}
draw_external_sprite_ext(spr[0],0,x_center,y_center-y_point,1,1,0,color,1);y_point -= 250;
// Audio Settings
if ( mouse_over != 1 ){color = c_white}else{color = gray}if ( button_select == 1 ){color = c_white}
draw_external_sprite_ext(spr[1],0,x_center,y_center-y_point,1,1,0,color,1);y_point -= 248;
// Control Settings
if ( mouse_over != 2 ){color = c_white}else{color = gray}if ( button_select == 2 ){color = c_white}
draw_external_sprite_ext(spr[2],0,x_center,y_center-y_point,1,1,0,color,1);y_point -= 165;
// Back
if ( mouse_over != 3 ){color = c_white}else{color = gray}if ( button_select == 3 ){color = c_white}
draw_external_sprite_ext(spr[3],0,x_center,y_center-y_point,1,1,0,color,1);y_point -= 212;
