/// draw_mainmenu_MainMenu()

gml_pragma("forceinline");

// Do Whatever Special Code Here
if ( light_rot1 < 2.5 ){light_rot_speed1 = 0.05;}if ( light_rot1 > 11 ){light_rot_speed1 = -0.05;}
light_rot1 += light_rot_speed1;

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

// Menu Pieces
draw_background(obj_game.img_ext[0],0,0);
draw_external_sprite(global.sprite_map[?"Main Menu\Paper Light Reflection.png"],0,x_center,y_center);

surface_reset_target();
}

draw_surface(surface_main,0,0);

draw_sprite_ext(obj_game.img_ext[10],0,x_center-920,y_center-540,1,1,light_rot1,c_white,1);
draw_sprite_ext(obj_game.img_ext[10],0,x_center+920,y_center-540,-1,1,-light_rot1,c_white,1);

draw_background(obj_game.img_ext[3],x_center-515,y_center-491);

// Buttons
y_point = 192;
// New Game
if ( mouse_over != 0 ){color = c_white}else{color = gray}if ( button_select == 0 ){color = c_white}
draw_external_sprite_ext(spr[0],0,x_center,y_center-y_point,1,1,0,color,1);y_point -= 116;
// Continue
if ( mouse_over != 1 ){color = c_white}else{color = gray}if ( button_select == 1 ){color = c_white}
draw_external_sprite_ext(spr[1],0,x_center,y_center-y_point,1,1,0,color,1);y_point -= 116;
// Load Game
if ( mouse_over != 2 ){color = c_white}else{color = gray}if ( button_select == 2 ){color = c_white}
draw_external_sprite_ext(spr[2],0,x_center,y_center-y_point,1,1,0,color,1);y_point -= 116;
// Options
if ( mouse_over != 3 ){color = c_white}else{color = gray}if ( button_select == 3 ){color = c_white}
draw_external_sprite_ext(spr[3],0,x_center,y_center-y_point,1,1,0,color,1);y_point -= 116;
// Credits
if ( mouse_over != 4 ){color = c_white}else{color = gray}if ( button_select == 4 ){color = c_white}
draw_external_sprite_ext(spr[4],0,x_center,y_center-y_point,1,1,0,color,1);y_point -= 116;
// Exit Game
if ( mouse_over != 5 ){color = c_white}else{color = gray}if ( button_select == 5 ){color = c_white}
draw_external_sprite_ext(spr[5],0,x_center,y_center-y_point,1,1,0,color,1);y_point -= 116;
