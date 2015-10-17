/// fps_draw_sprite(sprite_index,image_index,x,y,z,xscale,yscale)
// Draws a sprite at (x,y,z)
gml_pragma("forceinline")
var scale,dir,dist,zz;

dist=fps_get_distance(argument2,argument3)
if dist>fps_cam_maxdist{exit;}
dir=fps_get_direction(argument2,argument3)
fps_get_xy(dir,dist)
if fps_yy>-fps_cam_mindist{exit}
zz=fps_get_z(argument4)
scale=fps_cam_scale*(1+fps_yy/500)

draw_sprite_ext(argument0,argument1,fps_xx,zz-(fps_yy*fps_get_ver(zz)),argument5*scale,argument6*scale,0,c_white,1)
