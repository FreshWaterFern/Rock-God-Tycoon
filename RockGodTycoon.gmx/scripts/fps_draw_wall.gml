/// fps_draw_wall(texture_index,x1,y1,z1,x2,y2,z2)
/*
Draws a w3d wall from (x1,y1) to (x2,y2)
Requires a texture index
The texture must have a size the power of 2.
That means, 4, 8, 16, 32, 64, 128, 512, 1024 - and so on..
*/
gml_pragma("forceinline")
var xtex,ytex,scale,dir,dist1,dist2,alpha1,alpha2,fps_z,_ver,i;

dist1=fps_get_distance(argument1,argument2)
dist2=fps_get_distance(argument4,argument5)
if min(dist1,dist2)>fps_cam_maxdist{exit;}

dir=fps_get_direction(argument1,argument2)
fps_get_xy(dir,dist1)
x1=fps_xx
y1=fps_yy

dir=fps_get_direction(argument4,argument5)
fps_get_xy(dir,dist2)
x2=fps_xx
y2=fps_yy

if min(y1,y2)>-fps_cam_mindist{exit;}

zz1=fps_get_z(argument3)
ver1=fps_get_ver(zz1)
zz2=fps_get_z(argument6)
ver2=fps_get_ver(zz2)

xtex=texture_get_width(argument0)
ytex=texture_get_height(argument0)

draw_primitive_begin_texture(pr_trianglestrip,argument0)
    draw_vertex_texture(x1,zz1-(y1*ver1),0,ytex)
    draw_vertex_texture(x2,zz1-(y2*ver1),xtex,ytex)
    draw_vertex_texture(x1,zz2-(y1*ver2),0,0)
    draw_vertex_texture(x2,zz2-(y2*ver2),xtex,0)
draw_primitive_end()
