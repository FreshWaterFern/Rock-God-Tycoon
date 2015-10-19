/// premultiply_color(color,alpha)
var color = argument0;var alpha = argument1;
return make_color_rgb(
round(color_get_red(color)*alpha),
round(color_get_green(color)*alpha),
round(color_get_blue(color)*alpha)
);
