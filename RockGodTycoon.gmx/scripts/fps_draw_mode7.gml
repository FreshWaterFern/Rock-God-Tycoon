/// fps_draw_mode7(texture_index,quality,repeat,z,width,height)
/*
Stretches a texture to make it seem 3d.
Setting quality to 1 does in some cases look bad, but setting it to 5 drastically reduces framerate.
Try to find the optimal quality for your game.
Repeat should be false if you want the texture to only draw once, and true if you want it to tile.
*/
gml_pragma("forceinline")
var q,xtile,ytile,maxdist,xx,_ver,view,a,sin1,cos1,sin2,cos2,ld,xx1,xx2,yy1,yy2,ii,i;

/////////////////////////////////////////////////////
//Set some variables
/////////////////////////////////////////////////////
texture_set_repeat(argument2)
q=max(1+0.1/argument1,1)
argument4/=texture_get_width(argument0)
argument5/=texture_get_height(argument0)
maxdist=fps_cam_maxdist/fps_cam_scale
zz=fps_get_z(argument3)
_ver=fps_get_ver(zz)

/////////////////////////////////////////////////////
//Find the angle of the view
/////////////////////////////////////////////////////
view=5+view_wview[view_current]/23 //This formula is very inaccurate, but it works in a satisfying way
a=(fps_cam_angle+view)*pi/180
sin1=sin(-a)
cos1=cos(a)
a=(fps_cam_angle-view)*pi/180
sin2=sin(-a)
cos2=cos(a)

/////////////////////////////////////////////////////
//Find the coordinates of the lower left and lower right points in view
/////////////////////////////////////////////////////
view=view_wview[view_current]/2/fps_cam_scale
ld=lengthdir_y(view,fps_cam_angle)
xx1=fps_cam_x+ld
xx2=fps_cam_x-ld
ld=lengthdir_x(view,fps_cam_angle)
yy1=fps_cam_y-ld
yy2=fps_cam_y+ld

/////////////////////////////////////////////////////
//Save coordinates as variables
/////////////////////////////////////////////////////
ii=0
for (i=1;i<=11;i=i*q)
{
    var1=maxdist*((i-1)/10)
    x1[ii]=xx1+cos1*var1
    y1[ii]=yy1+sin1*var1
    x2[ii]=xx2+cos2*var1
    y2[ii]=yy2+sin2*var1
    xtex[ii]=(x1[ii]+x2[ii])/2/argument4
    ytex[ii]=(y1[ii]+y2[ii])/2/argument5
    ver[ii]=zz-fps_get_y(x1[ii],y1[ii])*_ver
    ii+=1
}

/////////////////////////////////////////////////////
//Draw triangles
/////////////////////////////////////////////////////
view=view_wview[view_current]/2

//Draw left triangle
draw_primitive_begin_texture(pr_trianglestrip,argument0)
for (i=0;i<ii;i+=1)
{
    draw_vertex_texture(0,ver[i],x1[i]/argument4,y1[i]/argument5)
    draw_vertex_texture(view,ver[i],xtex[i],ytex[i])
}
draw_primitive_end()

//Draw right triangle
draw_primitive_begin_texture(pr_trianglestrip,argument0)
for (i=0;i<ii;i+=1)
{
    draw_vertex_texture(view_wview[view_current],ver[i],x2[i]/argument4,y2[i]/argument5)
    draw_vertex_texture(view,ver[i],xtex[i],ytex[i])
}
draw_primitive_end()
