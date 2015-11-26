/// scr_button_handle(external_sprite_id,external_sprite_id_effect,button_id,x,y,width,height)

var color = c_white;

if ( mouse_check_area(argument3-(argument5/2),argument4-(argument6/2),argument3+(argument5/2),argument4+(argument6/2)) ){mouse_over = argument2;}if ( button_select == argument2 ){
spr[argument2]=global.sprite_map[?string(argument1)]}else{spr[argument2]=global.sprite_map[?string(argument0)];}

if ( !mouse_check_button_pressed(mb_left) ){if ( button_select != -2 ){mouse_over = -1;}}

if ( mouse_over != argument2 ){color = c_white}else{color = gray}if ( button_select == argument2 ){color = c_white}
draw_external_sprite_ext(spr[argument2],0,argument3,argument4,1,1,0,color,1);
