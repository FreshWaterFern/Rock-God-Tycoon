/// scr_path_position(ind,n)
/*
Finds the position of point n in the path.
Used in the fps_model scripts.
*/
gml_pragma("forceinline")
var nr,dist,i;
nr=path_get_number(argument0)
dist=0
for (i=1;i<min(argument1+1,nr);i+=1)
{
    dist+=point_distance(path_get_point_x(argument0,i),path_get_point_y(argument0,i),path_get_point_x(argument0,i-1),path_get_point_y(argument0,i-1))
}
return dist/path_get_length(argument0)
