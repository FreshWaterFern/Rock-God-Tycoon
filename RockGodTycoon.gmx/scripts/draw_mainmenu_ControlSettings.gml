/// draw_mainmenu_ControlSettings()

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
draw_sprite_ext(obj_game.img_ext[21],0,x_center+840,-10,1,1,mic_rot1-10,c_white,1);
draw_sprite(obj_game.img_ext[22],0,x_center-800+tv_move1,960-tv_move1);
draw_background(obj_game.img_ext[12],x_center-667,y_center-517.5);

if ( mouse_over != 0 ){color = c_white}else{color = gray}if ( button_select == 0 ){color = c_white}
draw_external_sprite_ext(spr[0],0,x_center-507,y_center-325,1,1,0,color,1);
if ( mouse_over != 1 ){color = c_white}else{color = gray}if ( button_select == 1 ){color = c_white}
draw_external_sprite_ext(spr[1],0,x_center-352,y_center-325,1,1,0,color,1);
if ( mouse_over != 2 ){color = c_white}else{color = gray}if ( button_select == 2 ){color = c_white}
draw_external_sprite_ext(spr[2],0,x_center-195,y_center-325,1,1,0,color,1);
if ( mouse_over != 3 ){color = c_white}else{color = gray}if ( button_select == 3 ){color = c_white}
draw_external_sprite_ext(spr[3],0,x_center-38,y_center-325,1,1,0,color,1);
if ( mouse_over != 4 ){color = c_white}else{color = gray}if ( button_select == 4 ){color = c_white}
draw_external_sprite_ext(spr[4],0,x_center+120,y_center-325,1,1,0,color,1);
if ( mouse_over != 5 ){color = c_white}else{color = gray}if ( button_select == 5 ){color = c_white}
draw_sprite_ext(real(spr_internal[0]),0,x_center+410,y_center-318,1.25,1.25,0,color,1);

// Buttons
y_point = 328;

if ( mouse_over != 6 ){color = c_white}else{color = gray}if ( button_select == 6 ){color = c_white}
draw_external_sprite_ext(spr[6],0,x_center+245,y_center+398,1,1,0,color,1);
if ( mouse_over != 7 ){color = c_white}else{color = gray}if ( button_select == 7 ){color = c_white}
draw_external_sprite_ext(spr[7],0,x_center+480,y_center+398,1,1,0,color,1);

if ( mouse_over != 8 ){color = c_white}else{color = gray}if ( button_select == 8 ){color = c_white}
draw_sprite_ext(real(spr_internal[1]),0,x_center-250,y_center+60,1,1,0,color,1);
if ( mouse_over != 9 ){color = c_white}else{color = gray}if ( button_select == 9 ){color = c_white}
draw_sprite_ext(real(spr_internal[2]),0,x_center-250,y_center+160,1,1,0,color,1);
if ( mouse_over != 10 ){color = c_white}else{color = gray}if ( button_select == 10 ){color = c_white}
draw_sprite_ext(real(spr_internal[3]),0,x_center-250,y_center+250,1,1,0,color,1);



// Draw Text
var color = make_colour_hsv(48,42,100);
draw_set_halign(fa_center);draw_set_valign(fa_middle);draw_set_color(c_black);var str = "";
var scale_text1 = 1;
if ( key_state == 1 ){draw_set_color(color);}else{draw_set_color(c_black);}
if ( key_set[0]==192 || key_set[0]==219 || key_set[0]==221 ){draw_set_font(font_peax_70);}else{draw_set_font(font_grave_60);}
while((string_width(string(keyboard_get_str(key_set[0])))*scale_text1)>140){scale_text1-=0.025;}
draw_text_transformed(x_center-507,y_center-195,string(keyboard_get_str(key_set[0])),scale_text1,scale_text1,0);
scale_text1 = 1;
if ( key_state == 2 ){draw_set_color(color);}else{draw_set_color(c_black);}
if ( key_set[0]==192 || key_set[0]==219 || key_set[0]==221 ){draw_set_font(font_peax_70);}else{draw_set_font(font_grave_60);}
while((string_width(keyboard_get_str(key_set[1]))*scale_text1)>140){scale_text1-=0.025;}
draw_text_transformed(x_center-352,y_center-195,keyboard_get_str(key_set[1]),scale_text1,scale_text1,0);
scale_text1 = 1;
if ( key_state == 3 ){draw_set_color(color);}else{draw_set_color(c_black);}
if ( key_set[0]==192 || key_set[0]==219 || key_set[0]==221 ){draw_set_font(font_peax_70);}else{draw_set_font(font_grave_60);}
while((string_width(keyboard_get_str(key_set[2]))*scale_text1)>140){scale_text1-=0.025;}
draw_text_transformed(x_center-195,y_center-195,keyboard_get_str(key_set[2]),scale_text1,scale_text1,0);
scale_text1 = 1;
if ( key_state == 4 ){draw_set_color(color);}else{draw_set_color(c_black);}
if ( key_set[0]==192 || key_set[0]==219 || key_set[0]==221 ){draw_set_font(font_peax_70);}else{draw_set_font(font_grave_60);}
while((string_width(keyboard_get_str(key_set[3]))*scale_text1)>140){scale_text1-=0.025;}
draw_text_transformed(x_center-38,y_center-195,keyboard_get_str(key_set[3]),scale_text1,scale_text1,0);;
scale_text1 = 1;
if ( key_state == 5 ){draw_set_color(color);}else{draw_set_color(c_black);}
if ( key_set[0]==192 || key_set[0]==219 || key_set[0]==221 ){draw_set_font(font_peax_70);}else{draw_set_font(font_grave_60);}
while((string_width(keyboard_get_str(key_set[4]))*scale_text1)>140){scale_text1-=0.025;}
draw_text_transformed(x_center+120,y_center-195,keyboard_get_str(key_set[4]),scale_text1,scale_text1,0);
scale_text1 = 0.9;
if ( key_state == 6 ){draw_set_color(color);}else{draw_set_color(c_black);}
if ( key_set[0]==192 || key_set[0]==219 || key_set[0]==221 ){draw_set_font(font_peax_70);}else{draw_set_font(font_grave_60);}
while((string_width(keyboard_get_str(key_set[5]))*scale_text1)>200){scale_text1-=0.025;}
draw_text_transformed(x_center+410,y_center-225,keyboard_get_str(key_set[5]),scale_text1,scale_text1,0);

draw_set_color(c_white);
