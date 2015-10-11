/// game_save_settings()
with(obj_game){
ini_open("settings.ini")
ini_write_real("data","fxaa",g_fxaa);
ini_write_real("data","vsync",g_vsync);
ini_write_real("data","fullscreen",g_fs);
ini_write_real("data","resolution",g_res);
ini_close();}
