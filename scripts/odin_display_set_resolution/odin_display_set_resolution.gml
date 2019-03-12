/// @desc Takes a height value to set a 16:9 resolution
/// @arg height

var _height = argument0;
var _width = round(argument0 * 1.777);
global.resolution_current = _height;
window_set_size(_width, _height);
surface_resize(application_surface, _width, _height);
display_set_gui_size(round(global.world_height * 1.777), global.world_height);