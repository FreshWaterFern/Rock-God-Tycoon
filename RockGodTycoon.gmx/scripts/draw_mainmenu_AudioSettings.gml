/// draw_mainmenu_AudioSettings()

gml_pragma("forceinline");

// Do Whatever Special Code Here
if ( light_rot3 < 35 ){light_rot_speed3 = 0.05;}if ( light_rot3 > 50 ){light_rot_speed3 = -0.05;}
light_rot3 += light_rot_speed3;

if ( mic_rot1 < 0 ){mic_rot_speed1 += 0.015;}if ( mic_rot1 > 0 ){mic_rot_speed1 += -0.015;}
mic_rot1 += mic_rot_speed1;

if ( tv_move1 < -6 ){tv_move_speed1 = 0.1;}if ( tv_move1 > 6 ){tv_move_speed1 = -0.1;}
tv_move1 += tv_move_speed1;

// Menu Pieces
if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

draw_background(obj_game.img_ext[2],0,0);

surface_reset_target();
}

draw_surface(surface_main,0,0);

draw_sprite_ext(obj_game.img_ext[11],0,x_center-1050,y_center,1,1,light_rot3-80,c_white,1);
draw_sprite_ext(obj_game.img_ext[11],0,x_center+1050,y_center,-1,1,-light_rot3+80,c_white,1);
draw_sprite_ext(obj_game.img_ext[7],0,x_center+840,-10,1,1,mic_rot1,c_white,1);
draw_sprite(obj_game.img_ext[8],0,x_center-800+(tv_move1/2),800-tv_move1);
draw_background(obj_game.img_ext[6],x_center-667,y_center-517.5);

// Buttons
y_point = 328;

if ( mouse_over != 0 ){color = c_white}else{color = gray}if ( button_select == 0 ){color = c_white}
draw_external_sprite_ext(spr[0],0,x_center-530+(375*music_slider),y_center-52,1,1,0,color,1);
if ( mouse_over != 1 ){color = c_white}else{color = gray}if ( button_select == 1 ){color = c_white}
draw_external_sprite_ext(spr[1],0,x_center+130+(375*sound_slider),y_center-52,1,1,0,color,1);

if ( mouse_over != 2 ){color = c_white}else{color = gray}if ( button_select == 2 ){color = c_white}
draw_external_sprite_ext(spr[2],0,x_center+245,y_center+398,1,1,0,color,1);
if ( mouse_over != 3 ){color = c_white}else{color = gray}if ( button_select == 3 ){color = c_white}
draw_external_sprite_ext(spr[3],0,x_center+480,y_center+398,1,1,0,color,1);

draw_set_color(c_white);
