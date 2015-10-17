/// fps_model_create(path_index)
/*
Creates a fake 3d model by using a path.
If you want to create a building, draw its outline as seen from above in a path.
The index of the new model is the same as the path you made it from.
*/

gml_pragma("forceinline")
var list,i,depth_list;
list=argument0
fps_mod_list[list]=ds_list_create()
fps_mod_nr[list]=path_get_number(argument0)
depth_list=ds_list_create()
for (i=0;i<=fps_mod_nr[list];i+=1)
{
    fps_mod_x[i,list]=path_get_point_x(argument0,i)
    fps_mod_y[i,list]=path_get_point_y(argument0,i)
    fps_mod_xtex[i,list]=fps_path_position(argument0,i)
    ds_list_add(depth_list,point_distance(path_get_point_x(argument0,i),path_get_point_y(argument0,i),0,0))
}
ds_list_sort(depth_list,true)
fps_mod_min_depth[i,list]=ds_list_find_value(depth_list,0)
ds_list_destroy(depth_list)
fps_mod_x[i,list]=path_get_point_x(argument0,i)
fps_mod_y[i,list]=path_get_point_y(argument0,i)
fps_mod_xtex[i,list]=1
return list;
