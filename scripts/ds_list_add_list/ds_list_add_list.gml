/// @desc Adds a list to a list (for the purpose of JSON encoding)
/// @arg target_list
/// @arg source_list

ds_list_add(argument0, argument1);
ds_list_mark_as_list(argument0, ds_list_size(argument0) - 1);