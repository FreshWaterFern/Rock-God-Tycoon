/// fps_draw_point(x,y,z)
// Draw a point
gml_pragma("forceinline")
var dir,dist,xx,yy,zz;

dist=fps_get_distance(argument0,argument1)
if dist>fps_cam_maxdist{exit;}
dir=fps_get_direction(argument0,argument1)
fps_get_xy(dir,dist)
xx=fps_xx
yy=fps_yy
zz=fps_get_z(argument2)
draw_point(xx,zz-yy*fps_get_ver(zz))
