/// text_input_create(x,y,click_x1,click_y1,click_x2,click_y2,font,max character,max string width,set_mode)
var inst = instance_create(argument0,argument1,obj_textinput);
inst.x1 = argument2;inst.y1 = argument3;
inst.x2 = argument4;inst.y2 = argument5;
inst.font = argument6;
inst.char_max = argument7;inst.str_width = argument8;
inst.set_mode = argument9;
return inst
