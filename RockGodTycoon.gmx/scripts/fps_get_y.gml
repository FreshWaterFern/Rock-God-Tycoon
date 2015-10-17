/// fps_get_y(x,y)
// Creates a variable in the calling object called "fps_yy"
gml_pragma("forceinline")
return fps_calculate_z(lengthdir_x(fps_get_distance(argument0,argument1)*fps_cam_dist_scale,fps_get_direction(argument0,argument1)))
