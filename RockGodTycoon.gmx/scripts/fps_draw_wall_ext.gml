/// fps_draw_wall_ext(texture_index,x1,y1,z1,x2,y2,z2,color,alpha,number_of_vertexes,fade)
/*
Draws a w3d wall from (x1,y1) to (x2,y2)
Requires a texture index
The texture must have a size the power of 2.
That means, 4, 8, 16, 32, 64, 128, 512, 1024 - and so on..

The extended version gives you control over effects such as 
more vertexes (better quality) and fading into the distance
*/
gml_pragma("forceinline")
var xtex,ytex,scale,dir,dist1,dist2,alpha1,alpha2,fps_z,_ver,i;

dist1=fps_get_distance(argument1,argument2)
dist2=fps_get_distance(argument4,argument5)
if min(dist1,dist2)>fps_cam_maxdist{exit;}

alpha1=argument8
alpha2=argument8
if argument10=true
{
    alpha1=fps_get_alpha(dist1)*argument8
    alpha2=fps_get_alpha(dist2)*argument8
}

dir=fps_get_direction(argument1,argument2)
fps_get_xy(dir,dist1)
x1=fps_xx
y1=fps_yy

dir=fps_get_direction(argument4,argument5)
fps_get_xy(dir,dist2)
x2=fps_xx
y2=fps_yy

if min(y1,y2)>-fps_cam_mindist{exit;}

xtex=texture_get_width(argument0)
ytex=texture_get_height(argument0)

draw_primitive_begin_texture(pr_trianglestrip,argument0)
    for (i=0;i<=argument9;i+=1)
    {
        fps_z=fps_get_z(argument3+(argument3+argument6)*(i/argument9))
        _ver=fps_get_ver(fps_z)
        temp_ytex=1-ytex*(i/argument9)
        draw_vertex_texture_color(x1,fps_z-(y1*_ver),0,temp_ytex,argument7,alpha1)
        draw_vertex_texture_color(x2,fps_z-(y2*_ver),xtex,temp_ytex,argument7,alpha2)
    }
draw_primitive_end()
draw_set_alpha(1)
draw_set_color(c_white)
