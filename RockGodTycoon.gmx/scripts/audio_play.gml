/// audio_play(type,index,loops,priority)
// type = 0 \\ Sound type
// type = 1 \\ Music type

if ( argument0 == 0 ){
return audio_play_sound_on(obj_game.emit_sound,obj_game.audio_ext[argument1],argument2,argument3);}
if ( argument0 == 1 ){
return audio_play_sound_on(obj_game.emit_music,obj_game.audio_ext[argument1],argument2,argument3);}
