/// fps_test_texture(texture_index,path_index,width,height)
/*
For testing and making textures only.
Draws the texture with the path on the side, to see what vertexes will draw what part of the texture.

Script made by TheSnidr
http://thesnidr.blog.com/
*/
gml_pragma("forceinline")
draw_set_color(c_white)
tex=argument0
xtex=texture_get_width(tex)
ytex=texture_get_height(tex)

draw_primitive_begin_texture(pr_trianglestrip,tex)

draw_vertex_texture((room_width-argument2)/2,(room_height-argument3)/2,0,0)
draw_vertex_texture((room_width+argument2)/2,(room_height-argument3)/2,xtex,0)
draw_vertex_texture((room_width-argument2)/2,(room_height+argument3)/2,0,ytex)
draw_vertex_texture((room_width+argument2)/2,(room_height+argument3)/2,xtex,ytex)

draw_primitive_end()

nr=path_get_number(argument1)
draw_set_color(c_red)
for (i=0;i<nr;i+=1)
{
    pos=fps_path_position(argument1,i)
    xx=(room_width-argument2)/2+argument2*pos
    yy=(room_height-argument3)/2
    draw_line(xx,yy-50,xx,yy+32)
    draw_text(xx-5,yy-60,string(i+1))
}
