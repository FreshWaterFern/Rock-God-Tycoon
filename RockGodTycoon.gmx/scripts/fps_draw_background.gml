/// fps_draw_background(texture_index,y,height,texture_view_width,hor_tiles)
/*
Draws a background that scrolls as the view rotates
Texture_view_width indicates how much of the texture should be seen at once (0 is nothing and 1 is the whole)
Hor_tiles indicates how many times the background should tile.
Draws a background that is stuck to the view on the y-axis, but moves on the x-axis when turning around
*/
gml_pragma("forceinline")
var middle,xtex,ytex,temp_xtex;

width=argument3/2
xtex=texture_get_width(argument0)*argument4
ytex=texture_get_height(argument0)

draw_set_alpha(1)
texture_set_repeat(true)
middle=2-fps_cam_angle/360


temp_xtex=(middle-width)*xtex
draw_primitive_begin_texture(pr_trianglestrip,argument0)
draw_vertex_texture(0,argument1,temp_xtex,0)
draw_vertex_texture(0,argument1+argument2,temp_xtex,ytex)
temp_xtex=(middle+width)*xtex
draw_vertex_texture(view_wview[view_current],argument1,temp_xtex,0)
draw_vertex_texture(view_wview[view_current],argument1+argument2,temp_xtex,ytex)

draw_primitive_end()
