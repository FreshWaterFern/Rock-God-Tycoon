/// sprite_list_ini()
/*
This script allows us to load all of our images into the game.
It contains the location for each file and the desired name
for referencing later on.
*/
global.sprite_map = ds_map_create();
sprite_list = ds_list_create();
var i = 0;

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
ds_list_add(sprite_list,"Options\Light.png");
ds_list_add(sprite_list,"Options\Speaker.png");
ds_list_add(sprite_list,"Options\Buttons\Audio settings button effect.png");
ds_list_add(sprite_list,"Options\Buttons\Audio settings button.png");
ds_list_add(sprite_list,"Options\Buttons\Control settings button effect.png");
ds_list_add(sprite_list,"Options\Buttons\Control settings button.png");
ds_list_add(sprite_list,"Options\Buttons\Video settings button effect.png");
ds_list_add(sprite_list,"Options\Buttons\Video settings button.png");
ds_list_add(sprite_list,"Video Settings\Controller.png");
ds_list_add(sprite_list,"Video Settings\Tv.png");
ds_list_add(sprite_list,"Video Settings\Buttons\Arrow button effect.png");
ds_list_add(sprite_list,"Video Settings\Buttons\Button.png");
ds_list_add(sprite_list,"Audio\Amplifier.png");
ds_list_add(sprite_list,"Audio\Hand.png");
ds_list_add(sprite_list,"Audio\Microphone.png");
ds_list_add(sprite_list,"Back button\Back Button effect.png");
ds_list_add(sprite_list,"Back button\Back Button.png");
ds_list_add(sprite_list,"Apply button\Apply button effect.png");
ds_list_add(sprite_list,"Apply button\Apply button.png");
ds_list_add(sprite_list,"General\message_show.png");
ds_list_add(sprite_list,"Main Game\GUI\Speed 1 Button.png");
ds_list_add(sprite_list,"Main Game\GUI\Speed 1 Button Effect.png");
ds_list_add(sprite_list,"Main Game\GUI\Speed 2 Button.png");
ds_list_add(sprite_list,"Main Game\GUI\Speed 2 Button Effect.png");
ds_list_add(sprite_list,"Main Game\GUI\Speed 3 Button.png");
ds_list_add(sprite_list,"Main Game\GUI\Speed 3 Button Effect.png");
ds_list_add(sprite_list,"Main Game\GUI\Pause Button.png");
ds_list_add(sprite_list,"Main Game\GUI\Pause Button Effect.png");
ds_list_add(sprite_list,"Main Game\GUI\Stats Piece.png");
ds_list_add(sprite_list,"Main Game\GUI\Stars Outlines.png");
ds_list_add(sprite_list,"Main Game\GUI\Stars Fill.png");
ds_list_add(sprite_list,"Main Game\GUI\Stars BG.png");
ds_list_add(sprite_list,"Main Game\GUI\Shop Button.png");
ds_list_add(sprite_list,"Main Game\GUI\Shop Button Effect.png");
ds_list_add(sprite_list,"Main Game\GUI\Money Button.png");
ds_list_add(sprite_list,"Main Game\GUI\Money Button Effect.png");
ds_list_add(sprite_list,"Main Game\GUI\Map Button.png");
ds_list_add(sprite_list,"Main Game\GUI\Map Button Effect.png");
ds_list_add(sprite_list,"Main Game\GUI\Band Info Button.png");
ds_list_add(sprite_list,"Main Game\GUI\Band Info Button Effect.png");
ds_list_add(sprite_list,"Main Game\GUI\Time Bar.png");
ds_list_add(sprite_list,"Main Game\GUI\Box.png");
ds_list_add(sprite_list,"Main Game\GUI\Sub_Menu_Piece.png");
ds_list_add(sprite_list,"Notes\Blue.png");
ds_list_add(sprite_list,"Notes\Blue1.png");
ds_list_add(sprite_list,"Notes\Green.png");
ds_list_add(sprite_list,"Notes\Green1.png");
ds_list_add(sprite_list,"Notes\Orange.png");
ds_list_add(sprite_list,"Notes\Orange1.png");
ds_list_add(sprite_list,"Notes\Red.png");
ds_list_add(sprite_list,"Notes\Red1.png");
ds_list_add(sprite_list,"Notes\Yellow.png");
ds_list_add(sprite_list,"Notes\Yellow1.png");
