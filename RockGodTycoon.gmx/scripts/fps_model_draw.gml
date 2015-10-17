/// fps_model_draw(model_index,texture_index,x,y,z,height,scale,color,alpha,number_of_vertexes)
/*
This script draw your model at the indicated coordinate.
The width of the texture must be a size the power of two. That means, 
2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, and so on.
Returns a natural depth for the object.
*/
gml_pragma("forceinline")
var dist;
dist=fps_get_distance(argument2,argument3)
if dist>fps_cam_maxdist
{
    exit;
}
var list,ytex,nr,xx,yy,fps_x,fps_y,u,i,l,middle_x,middle_y,x1,y1,x2,y2,dpt,fps_z,_ver,temp_ytex,quality;
quality=max(min(argument9-round(argument9*(dist/fps_cam_maxdist)),argument9),1)
list=fps_mod_list[argument0]
ds_list_clear(list)
ytex=texture_get_height(argument1)

xx[0]=argument2+fps_mod_x[0,argument0]*argument6
yy[0]=argument3+fps_mod_y[0,argument0]*argument6
fps_get_xy2(xx[0],yy[0])
fps_x[0]=fps_xx
fps_y[0]=fps_yy
u=0
l=1
for (i=1;i<fps_mod_nr[argument0];i+=1)
{
    xx[i]=argument2+fps_mod_x[i,argument0]*argument6
    yy[i]=argument3+fps_mod_y[i,argument0]*argument6
    middle_x[i]=(xx[i-1]+xx[i])/2
    middle_y[i]=(yy[i-1]+yy[i])/2
    
    fps_get_xy2(xx[i],yy[i])
    fps_x[i]=fps_xx
    fps_y[i]=fps_yy
    
    dpt[i]=fps_depth(middle_x[i],middle_y[i])
    ds_list_add(list,dpt[i])
}
ds_list_sort(list,false)
if ds_list_find_value(list,0)<-fps_cam_mindist{exit;}
for (zz=0;zz<=quality;zz+=1)
{
    fps_z[zz]=fps_get_z(argument4+argument5*(zz/quality))
    _ver[zz]=fps_get_ver(fps_z[zz])
}
while u<i-1
{
    l=max((l+1) mod i,1)
    if ds_list_find_value(list,u)=dpt[l]
    {
        u+=1
        if fps_y[l]<-fps_cam_mindist or fps_y[l-1]<-fps_cam_mindist
        {
            draw_primitive_begin_texture(pr_trianglestrip,argument1)
            for (k=0;k<=quality;k+=1)
            {
                temp_ytex=1-ytex*(k/quality)
                draw_vertex_texture_color(fps_x[l-1],fps_z[k]-(fps_y[l-1]*_ver[k]),fps_mod_xtex[l-1,argument0],temp_ytex,argument7,argument8)
                draw_vertex_texture_color(fps_x[l],fps_z[k]-(fps_y[l]*_ver[k]),fps_mod_xtex[l,argument0],temp_ytex,argument7,argument8)
            }
            draw_primitive_end()
        }
    }
}
return ds_list_find_value(list,ds_list_size(list)-1)
