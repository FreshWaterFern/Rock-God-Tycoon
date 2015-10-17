/// fps_set_projection(camera_x,camera_y,camera_z,camera_angle,camera_tilt,camera_offset,viewscale,maxdist,mindist)
/*
This script MUST be used in order to make the engine work. Should be initialized before any fps_ scripts
are used.
Maxdist is the maximal distance anything will be drawn. It is
typically set to room_width.
Mindist is the minimal distance. Set it to 0 to use default system.
*/
    gml_pragma("forceinline");
    //Camera variables
    globalvar fps_cam_x,fps_cam_y,fps_cam_z,
    fps_cam_angle,fps_cam_tilt,fps_cam_scale,
    fps_cam_maxdist,fps_cam_mindist,fps_cam_ind_x,
    fps_cam_ind_y,fps_cam_dist_scale;
    
    //Model variables
    globalvar fps_mod_x,fps_mod_y,fps_mod_list,
    fps_mod_nr,fps_mod_xtex,fps_mod_mindepth;

var _cos,_sin;
_cos=cos(degtorad(argument3))
_sin=sin(degtorad(argument3))
fps_cam_x=argument0+argument5*_cos
fps_cam_y=argument1-argument5*_sin
fps_cam_z=argument2*argument6
fps_cam_angle=argument3
//Tilt is used when tilting the camera up or down.
fps_cam_tilt=argument4
//Scale changes the distance between objects (only the way they're drawn - they aren't really moving at all)
//Makes it look like the camera is smaller the higher it is.
fps_cam_scale=argument6
//Maxdist specifies how far you can see.
fps_cam_maxdist=argument7*argument6
//Mindist specifies when to stop drawing when an object is behind the camera.
fps_cam_mindist=argument8*argument6


///variables for use with the fps_get_index.
fps_cam_ind_x=fps_cam_x-_cos*500/argument6
fps_cam_ind_y=fps_cam_y+_sin*500/argument6

/*
The dist_scale variable lets you change the perception of distance.
This is by default 1. If you're making a fast-paced game of some sort, 
setting this variable higher gives a pretty cool effect.
May cause depth problems, does not work well with the mode7 script
*/
fps_cam_dist_scale=1
