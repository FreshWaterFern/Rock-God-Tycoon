/// fps_draw_floor(z,color1,alpha1,color2,alpha2)
// Draws a simple 2-color primitive as floor.
gml_pragma("forceinline")
var zz;

zz=fps_get_z(argument0)
draw_primitive_begin(pr_trianglestrip)
    draw_vertex_color(0,zz,argument1,argument2)
    draw_vertex_color(view_wview,zz,argument1,argument2)
    zz+=500*fps_get_ver(zz)
    draw_vertex_color(0,zz,argument3,argument4)
    draw_vertex_color(view_wview,zz,argument3,argument4)
draw_primitive_end()
