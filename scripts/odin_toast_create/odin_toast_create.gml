/// @desc Creates a new toast notification
/// @arg text

// Create the toast
var _toast_height = sprite_get_height(obj_odin.toast_sprite);
var _new_toast = ds_map_create();
_new_toast[? "text"] = argument0;
_new_toast[? "y"] = -_toast_height;
_new_toast[? "alpha"] = 1;
_new_toast[? "timer"] = 240;
ds_list_insert(obj_odin.toast_list, 0, _new_toast);