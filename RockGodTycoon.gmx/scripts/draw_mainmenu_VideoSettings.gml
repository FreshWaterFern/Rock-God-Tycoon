/// draw_mainmenu_VideoSettings()

gml_pragma("forceinline");

// Do Whatever Special Code Here
if ( light_rot3 < 35 ){light_rot_speed3 = 0.05;}if ( light_rot3 > 50 ){light_rot_speed3 = -0.05;}
light_rot3 += light_rot_speed3;
if ( tv_move1 < -6 ){tv_move_speed1 = 0.1;}if ( tv_move1 > 6 ){tv_move_speed1 = -0.1;}
tv_move1 += tv_move_speed1;
if ( remote_move1 < -6 ){remote_move_speed1 = 0.1;}if ( remote_move1 > 6 ){remote_move_speed1 = -0.1;}
remote_move1 += remote_move_speed1;

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
draw_sprite_ext(obj_game.img_ext[9],0,x_center-828+tv_move1,y_center+260-tv_move1,0.9,0.9,0,c_white,1);
draw_external_sprite_ext(global.sprite_map[?"Video Settings\Controller.png"],0,x_center+828-(remote_move1/-2),y_center-360+remote_move1,0.9,0.9,0,c_white,1);
draw_background(obj_game.img_ext[5],x_center-667,y_center-517.5);

// Buttons
y_point = 328;

if ( mouse_over != 0 ){color = c_white}else{color = gray}if ( button_select == 0 ){color = c_white}
draw_external_sprite_ext(spr[0],0,x_center-328-130,y_center-152,1,1,0,color,1);
if ( mouse_over != 1 ){color = c_white}else{color = gray}if ( button_select == 1 ){color = c_white}
draw_external_sprite_ext(spr[1],0,x_center-328+136,y_center-152,-1,1,0,color,1);

if ( mouse_over != 2 ){color = c_white}else{color = gray}if ( button_select == 2 ){color = c_white}
draw_external_sprite_ext(spr[2],0,x_center-328-130,y_center+118,1,1,0,color,2);
if ( mouse_over != 3 ){color = c_white}else{color = gray}if ( button_select == 3 ){color = c_white}
draw_external_sprite_ext(spr[3],0,x_center-328+136,y_center+118,-1,1,0,color,3);

if ( mouse_over != 4 ){color = c_white}else{color = gray}if ( button_select == 4 ){color = c_white}
draw_external_sprite_ext(spr[4],0,x_center+328-130,y_center-152,1,1,0,color,4);
if ( mouse_over != 5 ){color = c_white}else{color = gray}if ( button_select == 5 ){color = c_white}
draw_external_sprite_ext(spr[5],0,x_center+328+136,y_center-152,-1,1,0,color,5);

if ( mouse_over != 6 ){color = c_white}else{color = gray}if ( button_select == 6 ){color = c_white}
draw_external_sprite_ext(spr[6],0,x_center+328-130,y_center+118,1,1,0,color,6);
if ( mouse_over != 7 ){color = c_white}else{color = gray}if ( button_select == 7 ){color = c_white}
draw_external_sprite_ext(spr[7],0,x_center+328+136,y_center+118,-1,1,0,color,7);

if ( mouse_over != 8 ){color = c_white}else{color = gray}if ( button_select == 8 ){color = c_white}
draw_external_sprite_ext(spr[8],0,x_center+270,y_center+398,1,1,0,color,1);
if ( mouse_over != 9 ){color = c_white}else{color = gray}if ( button_select == 9 ){color = c_white}
draw_external_sprite_ext(spr[9],0,x_center+505,y_center+398,1,1,0,color,1);

// Draw Text
draw_set_font(font_grave_36);draw_set_halign(fa_center);draw_set_valign(fa_middle);draw_set_color(c_black);var str = "";
switch(fxaa_set){case 0:{str="Off";break;}case 1:{str="2X";break;}case 2:{str="4X";break;}case 3:{str="8X";break;}case 4:{str="16X";break;}}
draw_text(x_center-325,y_center-144,str);
if(vsync_set){str="On";}else{str="Off";}
draw_text(x_center-325,y_center+126,str);
draw_text(x_center+325,y_center-144,resolution_get(res_set));
if(fs_set){str="On";}else{str="Off";}
draw_text(x_center+325,y_center+126,str);

draw_set_color(c_white);
