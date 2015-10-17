/// fps_draw_floor_tile_ext(texture_index,x1,y1,z,x2,y2,color,alpha,mode)
/*
Draws one horizontal floor tile.
You can choose between 3 modes:
0= Low quality
1= High quality
2= Low quality when far away, high quality when close to camera.
*/
gml_pragma("forceinline")
var xtex,ytex,_hor1,_ver1,_hor2,_ver2,scale,temp_zz,temp_z2,dir,dist,xx2,yy2,quality,avg1,avg2,avg_dist;
avg1=(argument4+argument1)/2
avg2=(argument5+argument2)/2
avg_dist=fps_get_distance(avg1,avg2)
quality=argument8
if quality=2
{
    if dist>fps_cam_maxdist/2
    {
        quality=0
    }
    else
    {
        quality=1
    }
}

///exit if the wall is too far away to be drawn.
dist=fps_get_distance(argument1,argument2)
if dist>fps_cam_maxdist{exit;}

//Fade when the wall is far away
draw_set_alpha(argument7)
if argument8=true
{
    draw_set_alpha(fps_get_alpha(dist)*argument7)
}
draw_set_color(argument6)

zz=fps_get_z(argument3)

fps_get_xy2(argument1,argument2)
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

_ver=fps_get_ver(zz)
xtex=texture_get_width(argument0)
ytex=texture_get_height(argument0)

switch quality
{
    case 0:
    {
        draw_primitive_begin_texture(pr_trianglestrip,argument0)

        draw_vertex_texture(x1,zz-(y1*_ver),0,0)
        draw_vertex_texture(x2,zz-(y2*_ver),0,ytex)
        draw_vertex_texture(x4,zz-(y4*_ver),xtex,0)
        draw_vertex_texture(x3,zz-(y3*_ver),xtex,ytex)

        draw_primitive_end()
    }
    case 1:
    {
        fps_get_xy2(avg1,avg2)
        y5=fps_yy
        x5=fps_xx
    
        draw_primitive_begin_texture(pr_trianglestrip,argument0)

        draw_vertex_texture(x1,zz-(y1*_ver),0,0)
        draw_vertex_texture(x5,zz-(y5*_ver),xtex/2,ytex/2)
        draw_vertex_texture(x2,zz-(y2*_ver),0,ytex)
        draw_vertex_texture(x3,zz-(y3*_ver),xtex,ytex)
        draw_vertex_texture(x5,zz-(y5*_ver),xtex/2,ytex/2)
        draw_vertex_texture(x4,zz-(y4*_ver),xtex,0)
        draw_vertex_texture(x1,zz-(y1*_ver),0,0)

        draw_primitive_end()
    }
}
draw_set_alpha(1)
draw_set_color(c_white)
