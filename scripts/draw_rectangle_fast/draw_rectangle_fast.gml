/// @desc Draws a rectangle using a pixel sprite
/// @arg pixel_sprite
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg outline
/// @arg color
/// @arg alpha

var _pixel = spr_pixel;
var _x1 = argument0;
var _y1 = argument1;
var _x2 = argument2;
var _y2 = argument3;
var _outline = argument4;
var _color = argument5;
var _alpha = argument6;
  
if (_outline) {
  draw_sprite_ext(_pixel,0, _x1 + 1, _y1, _x2 -_x1 - 2, 1, 0, _color,_alpha);
  draw_sprite_ext(_pixel,0, _x1, _y2 - 1, _x2 -_x1, 1, 0, _color,_alpha);
  draw_sprite_ext(_pixel,0, _x1, _y1, 1, _y2 -_y1 - 1, 0, _color,_alpha);
  draw_sprite_ext(_pixel,0, _x2 - 1, _y1, 1, _y2 - _y1 - 1, 0, _color,_alpha);
} else {
  draw_sprite_ext(_pixel, 0, _x1, _y1, _x2 -_x1,_y2 -_y1, 0, _color, _alpha);
}
