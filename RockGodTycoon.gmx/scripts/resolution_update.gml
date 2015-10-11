/// resolution_update()
with(obj_game){
res_x = 0;res_y = 0;
if ( display_get_width()/display_get_height() == 1.7777 ){show_debug_message("16:9");
switch(g_res){
case 0:{res_x=1280;res_y=720;break;}
case 1:{res_x=1360;res_y=768;break;}
case 2:{res_x=1366;res_y=768;break;}
case 3:{res_x=1600;res_y=900;break;}
case 4:{res_x=1920;res_y=1080;break;}
default:{g_res=0;resolution_update();break;}
}res_count=5;}
if ( display_get_width()/display_get_height() == 1.3333 ){show_debug_message("4:3");
switch(g_res){
case 0:{res_x=800;res_y=600;break;}
case 1:{res_x=1024;res_y=768;break;}
case 2:{res_x=1152;res_y=864;break;}
case 3:{res_x=1280;res_y=960;break;}
case 4:{res_x=1400;res_y=1050;break;}
case 5:{res_x=1600;res_y=1200;break;}
default:{g_res=0;resolution_update();break;}
}res_count=6;}

view_wport = res_x;view_hport = res_y;
if ( window_get_width() != res_x or window_get_height() != res_y ){
window_set_size(res_x,res_y);}

window_set_position((display_get_width()/2)-(res_x/2),(display_get_height()/2)-(res_y/2));}
