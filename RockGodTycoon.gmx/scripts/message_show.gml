/// message_show(string,id)
/*Show a pop up message with the text above.*/
draw_set_font(font_peax_20);draw_set_halign(fa_left);draw_set_valign(fa_middle);
obj_game.message_str = string_split(argument0,450);obj_game.menu_set="popup";
obj_game.message_id = argument1;
