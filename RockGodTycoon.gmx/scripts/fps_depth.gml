/// fps_depth(x,y)
/*
This returns a natural depth for the instance.
Use in end step event of every object using fps_ scripts.
"depth=fps_depth(x,y)"
*/
gml_pragma("forceinline")
return -lengthdir_x(fps_get_distance(argument0,argument1),fps_get_direction(argument0,argument1))
