/// game_save_settings()
with(obj_game){
ini_open("settings.ini")
ini_write_real("data","fxaa",g_fxaa);
ini_write_real("data","vsync",g_vsync);
ini_write_real("data","fullscreen",g_fs);
ini_write_real("data","resolution",g_res);
ini_write_real("data","sound",g_sound);
ini_write_real("data","music",g_music);
ini_write_real("controls","key1",obj_game.control_map[?"key1"]);
ini_write_real("controls","key2",obj_game.control_map[?"key2"]);
ini_write_real("controls","key3",obj_game.control_map[?"key3"]);
ini_write_real("controls","key4",obj_game.control_map[?"key4"]);
ini_write_real("controls","key5",obj_game.control_map[?"key5"]);
ini_write_real("controls","key6",obj_game.control_map[?"key6"]);
ini_close();}
