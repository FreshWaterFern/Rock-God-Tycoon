/// resolution_update(num)
var x_res = 0;var y_res = 0;
if ( display_get_width()/display_get_height() == 1.7777 ){
switch(res_set){
case 0:{x_res=1280;y_res=720;break;}
case 1:{x_res=1360;y_res=768;break;}
case 2:{x_res=1366;y_res=768;break;}
case 3:{x_res=1600;y_res=900;break;}
case 4:{x_res=1920;y_res=1080;break;}
}obj_game.res_count=5;}
if ( display_get_width()/display_get_height() == 1.3333 ){
switch(res_set){
case 0:{x_res=800;y_res=600;break;}
case 1:{x_res=1024;y_res=768;break;}
case 2:{x_res=1152;y_res=864;break;}
case 3:{x_res=1280;y_res=960;break;}
case 4:{x_res=1400;y_res=1050;break;}
case 5:{x_res=1600;y_res=1200;break;}
}obj_game.res_count=6;}

return string(x_res)+"X"+string(y_res)
