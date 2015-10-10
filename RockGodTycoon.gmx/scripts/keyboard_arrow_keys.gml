/// keyboard_arrow_keys()
/*Handles the up and down movement via the arrow keys in-game*/
gml_pragma("forceinline"); // YYC speed up

var keyboard_pressed = false;

// Arrow Key Navigation
if ( keyboard_check_pressed(vk_up) ){button_select--;keyboard_pressed=true;}if ( keyboard_check_pressed(vk_down) ){button_select++;keyboard_pressed=true;}
if ( keyboard_pressed ){if ( button_select < 0 ){button_select = button_count;}if ( button_select > button_count ){button_select = 0;}}
