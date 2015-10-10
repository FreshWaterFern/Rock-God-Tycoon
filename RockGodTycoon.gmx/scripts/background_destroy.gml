/// background_destroy(count)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var i = 0;
for(i=0;i<argument0;i++){
if ( background_exists(img_ext[i]) ){
background_delete(img_ext[i]);
}}
