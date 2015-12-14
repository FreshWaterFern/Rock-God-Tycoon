/// draw_character_editor_TorsoList()

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
if ( ds_list_size(global.item_list_torso) > 8 ){
list_index_start = (slider_pos[1]-152)/(797-152);
}else{
list_index_start = 0;
}

// Draw list of items
draw_set_color(c_white);
var i = 0;var r = 0;var size = ds_list_size(global.item_list_torso);var size2 = 0;

if ( !instance_exists(obj_equiplist_button) ){
for(i=0;i<size;i++){
ds_list_add(equiplist_inst,instance_create(311,162+(i*80),obj_equiplist_button));
size2 = ds_list_size(equiplist_inst)-1;
equiplist_inst[|size2].Item_Name = global.item_list_torso[|size2];
equiplist_inst[|size2].Item_Price = global.price_list_torso[|size2];
}
}

with(obj_equiplist_button){
var math_y = y-(((size-8.85)*80)*list_index_start);
if ( math_y > 85 && math_y < 865 ){
draw_external_sprite(global.sprite_map[?"Character Creation\Equip List Sub Menu\Item_Price_Tag.png"],0,311,math_y);
if ( mouse_check_area(311-239,math_y-34,311+239,math_y+34) ){
draw_external_sprite_ext(global.sprite_map[?"Character Creation\Equip List Sub Menu\Item_Price_Tag.png"],0,311,math_y,1,1,0,c_green,0.25);
if ( mouse_check_button_pressed(mb_left) ){
if ( !Locked ){
scr_equip_item(obj_character_pose1,"Torso",Item_Name);}}}}
}

draw_set_font(font_peax_20);draw_set_color(c_black);draw_set_halign(fa_left);draw_set_valign(fa_middle);

with(obj_equiplist_button){
var math_y = y-(((size-8.85)*80)*list_index_start);
if ( math_y > 110 && math_y < 950 ){
draw_text(91,math_y,Item_Name);}
}

draw_set_halign(fa_center);
with(obj_equiplist_button){
var math_y = y-(((size-8.85)*80)*list_index_start);
if ( math_y > 85 && math_y < 865 ){
var price_str = "";
if ( Item_Price <= 0 ){price_str = "Free";}else{price_str = "$"+string(Item_Price);}
draw_text(490,math_y,price_str);}
}

draw_set_color(c_white);

draw_sprite(spr_equiplist_overlay,0,0,27);

draw_external_sprite(global.sprite_map[?"Character Creation\Equip List Sub Menu\bar_slider_button.png"],0,slider_pos[0],slider_pos[1]);

// Back Button
scr_button_handle("Character Creation\Buttons\Back Button.png","Character Creation\Buttons\Back Button Effect.png",0,477,890,140,60);

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){audio_play(0,0,0,0); // Click sound
switch(button_select){
case 0:{menu_state="Main";surface_update=true;ds_list_clear(equiplist_inst);with(obj_equiplist_button){instance_destroy();}break;}
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

//draw_external_sprite(global.sprite_map[?"Back button\Back Button.png"],0,mouse_x,mouse_y);
//draw_text(mouse_x,mouse_y-128,string(mouse_x)+","+string(mouse_y));
