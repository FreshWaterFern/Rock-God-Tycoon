/// audio_destroy(count)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var i = 0;
for(i=0;i<argument0;i++){
if ( audio_ext[i] != -99 ){
audio_destroy_stream(audio_ext[i]);audio_ext[i] = -99;}}
