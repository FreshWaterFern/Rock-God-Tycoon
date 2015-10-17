/// fps_draw_floor_tile(texture_index,x1,y1,z,x2,y2)
// Draws one horizontal floor tile.
gml_pragma("forceinline")
var dist;
dist=fps_get_distance(argument1,argument2)
if dist>fps_cam_maxdist{exit;}

var zz,_ver,y1,x1,y2,x2,y3,x3,y4,x4;
zz=fps_get_z(argument3)
_ver=fps_get_ver(zz)

fps_get_xy(fps_get_direction(argument1,argument2),dist)
y1=fps_yy
x1=fps_xx

fps_get_xy2(argument1,argument5)
y2=fps_yy
x2=fps_xx

fps_get_xy2(argument4,argument5)
y3=fps_yy
x3=fps_xx

fps_get_xy2(argument4,argument2)
y4=fps_yy
x4=fps_xx

if min(y1,y2,y3,y4)>-fps_cam_mindist {exit;}
xtex=texture_get_width(argument0)
ytex=texture_get_height(argument0);


draw_primitive_begin_texture(pr_trianglestrip,argument0)

    draw_vertex_texture(x1,zz-(y1*_ver),0,0)
    draw_vertex_texture(x2,zz-(y2*_ver),0,ytex)
    draw_vertex_texture(x4,zz-(y4*_ver),xtex,0)
    draw_vertex_texture(x3,zz-(y3*_ver),xtex,ytex)

draw_primitive_end()
