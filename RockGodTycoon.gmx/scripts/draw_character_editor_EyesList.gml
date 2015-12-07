/// draw_character_editor_EyesList()

gml_pragma("forceinline");

// Menu Pieces

if ( !surface_exists(surface_main) ){
surface_main = surface_create(view_wview[0],view_hview[0]);
surface_update = true;}

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

draw_background_part(obj_game.img_ext[0],0,0,1920,1080,0,0);
draw_background(obj_game.img_ext[5],0,27);

surface_reset_target();
surface_update = false;

}

draw_surface(surface_main,0,0);

with(obj_character_pose1){
x=1350;y=900;draw_self();}

// Menu Slider
slider_pos[0] = 607;
if ( mouse_check_area(slider_pos[0]-10,slider_pos[1]-26,slider_pos[0]+10,slider_pos[1]+26) ){
if ( mouse_check_button_pressed(mb_left) ){
slider_set[0] = 1;
}
}
else
{
if ( mouse_check_button_pressed(mb_left) ){
slider_set[0] = 0;
}
}

if ( mouse_check_button_released(mb_left) ){
slider_set[0] = 0;}

if ( slider_set[0] ){
slider_pos[1] = clamp(device_mouse_y_to_gui(0),152,797);}

var list_index_start = slider_pos[1];
list_index_start = (slider_pos[1]-152)/(797-152);

// Draw list of items
draw_set_color(c_white);
var i = 0;var r = 0;var size = ds_list_size(global.item_list_beards);
for(i=floor(list_index_start*size);i<floor(list_index_start*size)+9 && global.item_list_beards[|i]!=undefined;i++){
draw_external_sprite(global.sprite_map[?"Character Creation\Equip List Sub Menu\Item_Price_Tag.png"],0,311,159+(r*80));
r++;
}

r = 0;

draw_set_font(font_peax_20);draw_set_color(c_black);draw_set_halign(fa_left);draw_set_valign(fa_middle);
var i = 0;var size = ds_list_size(global.item_list_beards);var price_str = "";
for(i=floor(list_index_start*size);i<floor(list_index_start*size)+9 && global.item_list_beards[|i]!=undefined;i++){
draw_text(91,159+(r*80),global.item_list_beards[|i]);
r++;
}

r = 0;

draw_set_halign(fa_center);
for(i=floor(list_index_start*size);i<floor(list_index_start*size)+9 && global.item_list_beards[|i]!=undefined;i++){
if ( global.price_list_beards[|i] <= 0 ){price_str = "Free";}else{price_str = "$"+string(global.price_list_beards[|i]);}
draw_text(490,159+(r*80),price_str);
r++;
}

draw_sprite(spr_equiplist_overlay,0,0,27);

draw_external_sprite(global.sprite_map[?"Character Creation\Equip List Sub Menu\bar_slider_button.png"],0,slider_pos[0],slider_pos[1]);

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){audio_play(0,0,0,0); // Click sound
switch(button_select){
case 0:{menu_state="Head";surface_update=true;break;}
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

//draw_external_sprite(global.sprite_map[?"Character Creation\Outfit Sub Menu\Buttons\Accessories_button.png"],0,mouse_x,mouse_y);
//draw_text(mouse_x,mouse_y-128,string(mouse_x)+","+string(mouse_y));
