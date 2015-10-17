/// fps_get_xy2(x,y)
// Creates two variables in the calling object, "fps_xx" and "fps_yy"
gml_pragma("forceinline")
var xx;
dir=fps_get_direction(argument0,argument1)
dist=fps_get_distance(argument0,argument1)
xx=view_wview[view_current]/2-lengthdir_y(dist,dir)

fps_yy=fps_calculate_z(lengthdir_x(dist*fps_cam_dist_scale,dir))
fps_xx=(xx-(fps_yy*fps_get_hor(xx)))
