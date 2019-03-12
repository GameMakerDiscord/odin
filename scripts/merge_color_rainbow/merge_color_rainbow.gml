/// @description merge_color_rainbow()
/// @param color1
/// @param color2
/// @param amount
var _c1 = [color_get_hue(argument0),color_get_saturation(argument0),color_get_value(argument0)];
var _c2 = [color_get_hue(argument1),color_get_saturation(argument1),color_get_value(argument1)];
var _newc = [lerp(_c1[0],_c2[0],argument2),lerp(_c1[1],_c2[1],argument2),lerp(_c1[2],_c2[2],argument2)];
 
return make_color_hsv(_newc[0],_newc[1],_newc[2]);