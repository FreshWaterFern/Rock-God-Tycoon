/// draw_ingame_menu_Main()

gml_pragma("forceinline");

// Menu Pieces

// Day & Night Render Begin

/*
a = predifined time in minutes
b = Total transition time in minutes
c = current minutes
d = current hours
Day And Night Transition Equation: Alpha = clamp((((c-a)+(d*60))/b),0,1);
*/

if ( date_day_cache != obj_game.game_time_day ){date_box_anim=1;}
date_day_cache = obj_game.game_time_day;

// Day
if ( obj_game.game_time_hours < 18 && obj_game.game_time_hours > 5 )
{
if ( obj_game.game_time_hours < 15 ){
day_alpha = clamp((((obj_game.game_time_minutes-360)+(obj_game.game_time_hours*60))/180),0,1);}
if ( obj_game.game_time_hours > 14 ){
day_alpha = 1-clamp((((obj_game.game_time_minutes-900)+(obj_game.game_time_hours*60))/180),0,1);}
draw_background_ext(obj_game.img_ext[10],0,0,1,1,0,c_white,day_alpha);}

// Evening
if ( obj_game.game_time_hours < 21 && obj_game.game_time_hours > 14 )
{
if ( obj_game.game_time_hours < 18 ){
evening_alpha = clamp((((obj_game.game_time_minutes-900)+(obj_game.game_time_hours*60))/180),0,1);}
if ( obj_game.game_time_hours > 17 ){
evening_alpha = 1-clamp((((obj_game.game_time_minutes-1140)+(obj_game.game_time_hours*60))/120),0,1);}
shader_set(sha_overlay);
texture_set_stage(tex_overlay,background_get_texture(bg_orange));
draw_background_ext(obj_game.img_ext[11],0,0,1,1,0,c_white,evening_alpha);
shader_reset();
}

// Night
if ( obj_game.game_time_hours < 9 or obj_game.game_time_hours > 18 )
{
if ( obj_game.game_time_hours < 9 && obj_game.game_time_hours > 5 ){
night_alpha = 1-clamp((((obj_game.game_time_minutes-360)+(obj_game.game_time_hours*60))/180),0,1);}
if ( obj_game.game_time_hours > 17 ){
night_alpha = clamp((((obj_game.game_time_minutes-1140)+(obj_game.game_time_hours*60))/120),0,1);}
shader_set(sha_overlay);
texture_set_stage(tex_overlay,background_get_texture(bg_blue));
draw_background_ext(obj_game.img_ext[12],0,0,1,1,0,c_white,night_alpha);
shader_reset();
}

// Animate date box transition
if ( date_box_anim > 0 ){date_box_pos=date_box_anim*-109;
if ( date_box_anim > 0.6 ){
date_box_anim_spd+=0.00125*(date_box_anim_spd+1);
date_box_anim-=date_box_anim_spd;}
else{date_box_anim_spd-=0.0008*(date_box_anim_spd+1);
date_box_anim-=date_box_anim_spd;}
surface_update = true;
}
else{date_box_anim=0;date_box_anim_spd=0.0015;}

if ( !surface_exists(surface_main) ){
surface_main = surface_create(view_wview[0],view_hview[0]);
surface_update = true;}

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

// Day & Night Render End

draw_external_sprite(global.sprite_map[?"Main Game\GUI\Box.png"],0,view_wview[0]-332,view_hview[0]-148);
draw_external_sprite(global.sprite_map[?"Main Game\GUI\Sub_Menu_Piece.png"],0,584,view_hview[0]-94);
draw_external_sprite(global.sprite_map[?"Main Game\GUI\Time Bar.png"],0,1331,view_hview[0]-50);

// Date Box Background
draw_external_sprite(global.sprite_map[?"Main Game\GUI\date_box_back.png"],0,420,62);

// Date Boxes
draw_external_sprite(global.sprite_map[?"Main Game\GUI\Date_Box.png"],0,-50-date_box_pos,59);
draw_external_sprite(global.sprite_map[?"Main Game\GUI\Date_Box.png"],0,58-date_box_pos,59);
draw_external_sprite(global.sprite_map[?"Main Game\GUI\Date_Box.png"],0,167-date_box_pos,59);
draw_external_sprite(global.sprite_map[?"Main Game\GUI\Date_Box.png"],0,276-date_box_pos,59);
draw_external_sprite(global.sprite_map[?"Main Game\GUI\Date_Box.png"],0,385-date_box_pos,59);
draw_external_sprite(global.sprite_map[?"Main Game\GUI\Date_Box.png"],0,494-date_box_pos,59);
draw_external_sprite(global.sprite_map[?"Main Game\GUI\Date_Box.png"],0,603-date_box_pos,59);
draw_external_sprite(global.sprite_map[?"Main Game\GUI\Date_Box.png"],0,711-date_box_pos,59);
draw_set_font(font_metal_20);draw_set_color(c_black);draw_set_valign(fa_bottom);

draw_set_halign(fa_right);
var day_count = obj_game.game_time_day-1;
draw_text(-50-8-date_box_pos,59+37,day_count);
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;}
draw_text(59-8-date_box_pos,59+37,day_count);
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;}
draw_text(167-8-date_box_pos,59+37,day_count);
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;}
draw_text(276-8-date_box_pos,59+37,day_count);
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;}
draw_text(385-8-date_box_pos,59+37,day_count);
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;}
draw_text(494-8-date_box_pos,59+37,day_count);
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;}
draw_text(603-8-date_box_pos,59+37,day_count);
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;}
draw_text(712-8-date_box_pos,59+37,day_count);

draw_set_halign(fa_center);draw_set_font(font_metal_14);
var month_count = obj_game.game_time_month;
day_count = obj_game.game_time_day-1;
draw_text(-50+17-date_box_pos,59+36,string_delete(obj_game.game_month_name[|month_count-1],4,string_length(obj_game.game_month_name[|month_count-1])-2));
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;month_count++;}
if ( month_count > 12 ){month_count=1;}
draw_text(59+17-date_box_pos,59+36,string_delete(obj_game.game_month_name[|month_count-1],4,string_length(obj_game.game_month_name[|month_count-1])-2));
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;month_count++;}
if ( month_count > 12 ){month_count=1;}
draw_text(167+17-date_box_pos,59+36,string_delete(obj_game.game_month_name[|month_count-1],4,string_length(obj_game.game_month_name[|month_count-1])-2));
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;month_count++;}
if ( month_count > 12 ){month_count=1;}
draw_text(276+17-date_box_pos,59+36,string_delete(obj_game.game_month_name[|month_count-1],4,string_length(obj_game.game_month_name[|month_count-1])-2));
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;month_count++;}
if ( month_count > 12 ){month_count=1;}
draw_text(385+17-date_box_pos,59+36,string_delete(obj_game.game_month_name[|month_count-1],4,string_length(obj_game.game_month_name[|month_count-1])-2));
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;month_count++;}
if ( month_count > 12 ){month_count=1;}
draw_text(494+17-date_box_pos,59+36,string_delete(obj_game.game_month_name[|month_count-1],4,string_length(obj_game.game_month_name[|month_count-1])-2));
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;month_count++;}
if ( month_count > 12 ){month_count=1;}
draw_text(603+17-date_box_pos,59+36,string_delete(obj_game.game_month_name[|month_count-1],4,string_length(obj_game.game_month_name[|month_count-1])-2));
day_count++;
if ( day_count > obj_game.game_month_day_count[|obj_game.game_time_month-1] ){day_count=1;month_count++;}
if ( month_count > 12 ){month_count=1;}
draw_text(712+17-date_box_pos,59+36,string_delete(obj_game.game_month_name[|month_count-1],4,string_length(obj_game.game_month_name[|month_count-1])-2));

draw_set_color(c_white);

// Other Date Related Stuff (Top Left)
draw_external_sprite(global.sprite_map[?"Main Game\GUI\Day_Bar_Piece.png"],0,459,62);

surface_reset_target();
surface_update = false;
}

draw_surface(surface_main,0,0);

// Clock And Date On Top Of "Day_Bar_Piece.png"
draw_set_color(c_black);draw_set_halign(fa_center);draw_set_valign(fa_middle);draw_set_font(font_metal_14);
draw_text(816,42,obj_game.game_world_date);
draw_set_font(font_metal_20);
var str_minutes = string(obj_game.game_time_minutes);if(string_length(str_minutes) < 2){str_minutes="0"+str_minutes;}
var str_hours = string(obj_game.game_time_hours);if(string_length(str_hours) < 2){str_hours="0"+str_hours;}
draw_text(816,81,string(str_hours)+":"+str_minutes);

// Map
if ( mouse_over != 0 ){color = c_white}else{color = gray}if ( button_select == 0 ){color = c_white}
draw_external_sprite_ext(spr[0],0,130,view_hview[0]-78,1,1,0,color,1);
// Money
if ( mouse_over != 1 ){color = c_white}else{color = gray}if ( button_select == 1 ){color = c_white}
draw_external_sprite_ext(spr[1],0,412,view_hview[0]-78,1,1,0,color,1);
// Band Info
if ( mouse_over != 2 ){color = c_white}else{color = gray}if ( button_select == 2 ){color = c_white}
draw_external_sprite_ext(spr[2],0,706,view_hview[0]-78,1,1,0,color,1);
// Shop Info
if ( mouse_over != 3 ){color = c_white}else{color = gray}if ( button_select == 3 ){color = c_white}
draw_external_sprite_ext(spr[3],0,1009,view_hview[0]-78,1,1,0,color,1);
// Pause Button
if ( obj_game.game_time_pause ){spr[4]=global.sprite_map[?"Main Game\GUI\Pause Button Effect.png"];}
if ( mouse_over != 4 ){color = c_white}else{color = gray}if ( button_select == 4 ){color = c_white}
draw_external_sprite_ext(spr[4],0,1218,1041,1,1,0,color,1);
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
