/// draw_ingame_menu_BandInfo()

gml_pragma("forceinline");

var color = c_white;

if ( !surface_exists(surface_main) ){
surface_main = surface_create(view_wview[0],view_hview[0]);
surface_update = true;}

var binder_center = 941;

draw_background(obj_game.img_ext[13],0,0);
if ( band_info_page_left == 0 ){

if ( mouse_over != 1 ){color = c_white}else{color = gray}if ( button_select == 1 ){color = c_white}
draw_external_sprite_ext(spr[1],0,285,370,1,1,0,color,1);

draw_background(obj_game.img_ext[14],260,120);

if ( mouse_over != 0 ){color = c_white}else{color = gray}if ( button_select == 0 ){color = c_white}
draw_external_sprite_ext(spr[0],0,285,213,1,1,0,color,1);}

else{

if ( mouse_over != 0 ){color = c_white}else{color = gray}if ( button_select == 0 ){color = c_white}
draw_external_sprite_ext(spr[0],0,285,213,1,1,0,color,1);

draw_background(obj_game.img_ext[17],260,120);

if ( mouse_over != 1 ){color = c_white}else{color = gray}if ( button_select == 1 ){color = c_white}
draw_external_sprite_ext(spr[1],0,285,370,1,1,0,color,1);
}

if ( band_info_page_right == 0 ){
draw_background(obj_game.img_ext[15],binder_center+10,120);}

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

// Text
draw_set_font(font_peax_14);color = make_colour_rgb(38,43,76);draw_set_color(color);
draw_set_halign(fa_left);draw_set_valign(fa_middle);

// Left Side
if ( band_info_page_left == 0 ){
draw_text(420,586,"Test String"); // "Ends At:"
draw_text(466,617,"Test String"); // "Winner Gets:"
draw_text(511,710,"Test String"); // "Previous Rivalries:"
draw_text(480,741,"Test String"); // "Current Rivalries"
draw_text(480,772,"Test String"); // "Rivalries Won:"
draw_text(480,803,"Test String"); // "Rivalries Lost:"
}
else{
draw_text(466,617,"Test String"); // "Winner Gets:"
draw_text(511,710,"Test String"); // "Previous Rivalries:"
draw_text(480,741,"Test String"); // "Current Rivalries"
draw_text(480,772,"Test String"); // "Rivalries Won:"
draw_text(480,803,"Test String"); // "Rivalries Lost:"
}

// Right Side
if ( band_info_page_right == 0 ){
draw_text(1358,211,string(obj_game.stat_songs_written)); // "total number of songs created:"
draw_text(1372,242,string(obj_game.stat_songs_generated)); // "total number of songs generated:"
draw_text(1228,274,obj_game.stat_best_rated_song); // "best rated song:"
draw_text(1284,304,string(obj_game.stat_singles_released)); // "total released singles:"
draw_text(1257,335,string(obj_game.stat_eps_released)); // "total released ep's:"
draw_text(1257,366,string(obj_game.stat_lps_released)); // "total released lp's:"
draw_text(1240,397,obj_game.stat_best_rated_single); // "best rated single:"
draw_text(1202,430,obj_game.stat_best_rated_ep); // "best rated ep:"
draw_text(1202,460,obj_game.stat_best_rated_lp); // "best rated lp:"
draw_text(1271,522,obj_game.stat_record_deal_previous); // "previous record deals:"
draw_text(1300,585,obj_game.stat_record_deal_current); // "current record deal:"
draw_text(1389,678,obj_game.stat_label_name); // "labels name:"
draw_text(1480,710,obj_game.stat_labelband_relationship); // "label-band relationship:"
draw_text(1390,740,obj_game.stat_label_status); // "label obj_game.status:"
draw_text(1426,772,obj_game.stat_contract_type); // "type of contract:"
draw_text(1430,802,obj_game.stat_contract_duration); // "contract duration:"
}


draw_set_color(c_white);

// Binder Rings
draw_external_sprite(global.sprite_map[?"Band_Info\Binder_Rings.png"],0,binder_center,184);
draw_external_sprite(global.sprite_map[?"Band_Info\Binder_Rings.png"],0,binder_center,529);
draw_external_sprite(global.sprite_map[?"Band_Info\Binder_Rings.png"],0,binder_center,874);

}

surface_reset_target();
surface_update = false;

draw_surface(surface_main,0,0);

if ( mouse_over != 4 ){color = c_white}else{color = gray}if ( button_select == 4 ){color = c_white}
draw_external_sprite_ext(spr[4],0,1796,1030,1,1,0,color,1);

if ( band_info_page_left == 1 ){

if ( mouse_over != 5 ){color = c_white}else{color = gray}if ( button_select == 5 ){color = c_white}
draw_external_sprite_ext(spr[5],0,386,204,1,1,0,color,1); // "Guitarist Button"

if ( mouse_over != 6 ){color = c_white}else{color = gray}if ( button_select == 6 ){color = c_white}
draw_external_sprite_ext(spr[6],0,508,204,1,1,0,color,1); // "Bassist Button"

if ( mouse_over != 7 ){color = c_white}else{color = gray}if ( button_select == 7 ){color = c_white}
draw_external_sprite_ext(spr[7],0,630,204,1,1,0,color,1); // "Drummer Button"

}

// Debug
//draw_external_sprite(spr[1],0,mouse_x,mouse_y);
//draw_text(mouse_x+32,mouse_y,string(mouse_x)+","+string(mouse_y));
//if ( mouse_check_button_pressed(mb_left) ){show_message(string(mouse_x)+","+string(mouse_y));}
