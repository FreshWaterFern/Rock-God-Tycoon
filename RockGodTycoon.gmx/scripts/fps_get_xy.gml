/// fps_get_xy(direction,distance)
// Creates two variables in the calling object, "fps_xx" and "fps_yy"
gml_pragma("forceinline")
var xx;
xx=view_wview[view_current]/2-lengthdir_y(argument1,argument0)

fps_yy=fps_calculate_z(lengthdir_x(argument1*fps_cam_dist_scale,argument0))
fps_xx=(xx-(fps_yy*fps_get_hor(xx)))
