/// fps_get_rot_index(sprite,x,y,angle)
// Returns the proper image index for a "3D" rotated sprite, like in Super Mario Kart.
gml_pragma("forceinline")
var dir;
dir=((point_direction(argument1,argument2,fps_cam_ind_x,fps_cam_ind_y)-argument3)+360) mod 360
return (round((dir/360)*(sprite_get_number(argument0)-1)))
