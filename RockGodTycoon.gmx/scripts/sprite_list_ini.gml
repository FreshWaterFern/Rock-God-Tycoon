/// sprite_list_ini()
/*
This script allows us to load all of our images into the game.
It contains the location for each file and the desired name
for referencing later on.
*/
global.sprite_map = ds_map_create();
sprite_list = ds_list_create();
var i = 0;

ds_list_add(sprite_list,"Main Menu\Background.png");
ds_list_add(sprite_list,"Main Menu\Paper Piece.png");
ds_list_add(sprite_list,"Main Menu\Paper Light Reflection.png");
ds_list_add(sprite_list,"Main Menu\Light.png");
ds_list_add(sprite_list,"Main Menu\Buttons\Continue button effect.png");
ds_list_add(sprite_list,"Main Menu\Buttons\Continue button.png");
ds_list_add(sprite_list,"Main Menu\Buttons\Credits button effect.png");
ds_list_add(sprite_list,"Main Menu\Buttons\Credits button.png");
ds_list_add(sprite_list,"Main Menu\Buttons\Exit game button effect.png");
ds_list_add(sprite_list,"Main Menu\Buttons\Exit game button.png");
ds_list_add(sprite_list,"Main Menu\Buttons\Load game button effect.png");
ds_list_add(sprite_list,"Main Menu\Buttons\Load game button.png");
ds_list_add(sprite_list,"Main Menu\Buttons\New game button effect.png");
ds_list_add(sprite_list,"Main Menu\Buttons\New game button.png");
ds_list_add(sprite_list,"Main Menu\Buttons\Options button effect.png");
ds_list_add(sprite_list,"Main Menu\Buttons\Options button.png");
ds_list_add(sprite_list,"Options\Background.png");
ds_list_add(sprite_list,"Options\Light.png");
ds_list_add(sprite_list,"Options\Paper Piece.png");
ds_list_add(sprite_list,"Options\Speaker.png");
ds_list_add(sprite_list,"Options\Buttons\Audio settings button effect.png");
ds_list_add(sprite_list,"Options\Buttons\Audio settings button.png");
ds_list_add(sprite_list,"Options\Buttons\Control settings button effect.png");
ds_list_add(sprite_list,"Options\Buttons\Control settings button.png");
ds_list_add(sprite_list,"Options\Buttons\Video settings button effect.png");
ds_list_add(sprite_list,"Options\Buttons\Video settings button.png");
ds_list_add(sprite_list,"Back button\Back Button effect.png");
ds_list_add(sprite_list,"Back button\Back Button.png");
