/// fps_draw_mode7_triple(tex1,tex2,tex3,quality,repeat,z1,z2,z3,width,height)
// Draws three flat, textured planes, much faster than using draw_mode7 thrice
gml_pragma("forceinline")
var q,xtile,ytile,maxdist,xx,_ver,view,a,sin1,cos1,sin2,cos2,ld,xx1,xx2,yy1,yy2,ii,i;

/////////////////////////////////////////////////////
//Set some variables
/////////////////////////////////////////////////////
texture_set_repeat(argument4)
q=max(1+0.1/argument3,1)
argument8/=texture_get_width(argument0)
argument9/=texture_get_height(argument0)
maxdist=fps_cam_maxdist/fps_cam_scale/10
zz1=fps_get_z(argument5)
_ver1=fps_get_ver(zz1)
zz2=fps_get_z(argument6)
_ver2=fps_get_ver(zz2)
zz3=fps_get_z(argument7)
_ver3=fps_get_ver(zz3)

/////////////////////////////////////////////////////
//Find the angle of the view
/////////////////////////////////////////////////////
view=5+view_wview[view_current]/23 //This formula is very inaccurate, but it works in a satisfying way
a=degtorad(fps_cam_angle+view)
sin1=sin(a)/argument9
cos1=cos(a)/argument8
a=degtorad(fps_cam_angle-view)
sin2=sin(a)/argument9
cos2=cos(a)/argument8

/////////////////////////////////////////////////////
//Find the coordinates of the lower left and lower right points in view
/////////////////////////////////////////////////////
view=view_wview[view_current]/2/fps_cam_scale
ld=lengthdir_y(view,fps_cam_angle)
xx1=(fps_cam_x+ld)/argument8
xx2=(fps_cam_x-ld)/argument8
ld=lengthdir_x(view,fps_cam_angle)
yy1=(fps_cam_y-ld)/argument9
yy2=(fps_cam_y+ld)/argument9

/////////////////////////////////////////////////////
//Saving coordinates as variables, and drawing the floor
/////////////////////////////////////////////////////
ii=0
view=view_wview[view_current]/2
draw_primitive_begin_texture(pr_trianglestrip,argument0)
for (i=1;i<=11;i=i*q)
{
    var1=maxdist*(i-1)
    x1[ii]=xx1+cos1*var1
    y1[ii]=yy1-sin1*var1
    x2[ii]=xx2+cos2*var1
    y2[ii]=yy2-sin2*var1
    xtex[ii]=(x1[ii]+x2[ii])/2
    ytex[ii]=(y1[ii]+y2[ii])/2
    yy=fps_get_y(x1[ii]*argument8,y1[ii]*argument9)
    ver1[ii]=zz1-yy*_ver1
    ver2[ii]=zz2-yy*_ver2
    ver3[ii]=zz3-yy*_ver3
    draw_vertex_texture(0,ver1[ii],x1[ii],y1[ii])
    draw_vertex_texture(view,ver1[ii],xtex[ii],ytex[ii])
    ii+=1
}
draw_primitive_end()
draw_primitive_begin_texture(pr_trianglestrip,argument0)
for (i=0;i<ii;i+=1)
{
    draw_vertex_texture(view_wview[view_current],ver1[i],x2[i],y2[i])
    draw_vertex_texture(view,ver1[i],xtex[i],ytex[i])
}
draw_primitive_end()
//////////////////////////////////////////////////////////////////////////
//Second floor
draw_primitive_begin_texture(pr_trianglestrip,argument1)
for (i=0;i<ii;i+=1)
{
    draw_vertex_texture(0,ver2[i],x1[i],y1[i])
    draw_vertex_texture(view,ver2[i],xtex[i],ytex[i])
}
draw_primitive_end()
draw_primitive_begin_texture(pr_trianglestrip,argument1)
for (i=0;i<ii;i+=1)
{
    draw_vertex_texture(view_wview[view_current],ver2[i],x2[i],y2[i])
    draw_vertex_texture(view,ver2[i],xtex[i],ytex[i])
}
draw_primitive_end()
//////////////////////////////////////////////////////////////////////////
//Third floor
draw_primitive_begin_texture(pr_trianglestrip,argument2)
for (i=0;i<ii;i+=1)
{
    draw_vertex_texture(0,ver3[i],x1[i],y1[i])
    draw_vertex_texture(view,ver3[i],xtex[i],ytex[i])
}
draw_primitive_end()
draw_primitive_begin_texture(pr_trianglestrip,argument2)
for (i=0;i<ii;i+=1)
{
    draw_vertex_texture(view_wview[view_current],ver3[i],x2[i],y2[i])
    draw_vertex_texture(view,ver3[i],xtex[i],ytex[i])
}
draw_primitive_end()
