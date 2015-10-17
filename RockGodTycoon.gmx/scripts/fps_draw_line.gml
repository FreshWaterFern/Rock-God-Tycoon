/// fps_draw_line(x1,y1,z1,x2,y2,z2)
// Draw a line
gml_pragma("forceinline")
var dir,dist,x1,y1,x2,y2,z1,z2;

dist=fps_get_distance(argument0,argument1)
if dist>fps_cam_maxdist{exit;}
dir=fps_get_direction(argument0,argument1)
fps_get_xy(dir,dist)
x1=fps_xx
y1=fps_yy
fps_get_xy2(argument3,argument4)
x2=fps_xx
y2=fps_yy

z1=fps_get_z(argument2)
z2=fps_get_z(argument5)

draw_line(x1,z1-y1*fps_get_ver(z1),x2,z2-y2*fps_get_ver(z2))
